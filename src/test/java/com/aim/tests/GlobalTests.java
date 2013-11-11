package com.aim.tests;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.FilterChainProxy;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.filter.DelegatingFilterProxy;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.webAppContextSetup;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"classpath:/spring/web-aim-servlet.xml",
                        "classpath:/spring/security-config.xml"})
public class GlobalTests {
    private MockMvc mockMvc;

    private static final Logger logger = Logger.getLogger(GlobalTests.class);

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    protected WebApplicationContext wac;

    private FilterChainProxy springSecurityFilterChain;

    private UserDetailsService userDetailsService;

    @Before
    public void setup() {
        userDetailsService = wac.getBean(UserDetailsService.class);
        springSecurityFilterChain = wac.getBean(FilterChainProxy.class);
        this.mockMvc = webAppContextSetup(this.wac).addFilter(springSecurityFilterChain).build();
    }

    @Test
    public void home() throws Exception {
        logger.info("Performing test: home");
        mockMvc.perform(get("/"))
                .andExpect(status().isOk())
                .andExpect(view().name("index"));
    }

    @Test
    public void login() throws Exception {
        logger.info("Performing test: login");
        mockMvc.perform(get("/login"))
                .andExpect(status().isOk())
                .andExpect(view().name("login/login"));
    }

    private void setAuthentication(String username) {
        UserDetails details = userDetailsService.loadUserByUsername(username);
        Authentication auth = new UsernamePasswordAuthenticationToken(details.getUsername(), details.getPassword(), details.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(auth);

        System.out.println("User: " + details.getUsername() + " Auth: " + details.getAuthorities());
    }

    private void testOk(String usernames[], String url, String view) throws Exception {
        for (String username : usernames) {
            setAuthentication(username);

            mockMvc.perform(get(url))
                    .andExpect(status().isFound());
        }
    }

    private void testDenied(String usernames[], String url, String view) throws Exception {
        for (String username : usernames) {
            setAuthentication(username);

            mockMvc.perform(get(url))
                    .andExpect(status().isFound());
        }
    }

    @Test
    public void users() throws Exception {
        String url = "/users";
        String view = "users/allusers";
        String okUsers[] = {"milky", "monika"};

        testOk(okUsers, url, view);
    }

    @Test
    public void peoTabulate() throws Exception {
        String url = "/peo/tabulate-attainment";
        String view = "peo/tabulate-attainment";
        String okUsers[] = {"milky", "monika", "yun"};
        String deniedUsers[] = {"alvin", "cc"};

        testOk(okUsers, url, view);
        testDenied(deniedUsers, url, "login/login");
    }
}
