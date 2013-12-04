package com.aim.interceptor;

import com.aim.model.UserAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.LinkedHashMap;
import java.util.Properties;
import java.util.TreeMap;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/20/13
 * Time: 9:23 PM
 */
public class DefaultModelInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    private Properties globalProperties;

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response,
                           Object o, ModelAndView modelAndView) throws Exception {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (!(principal instanceof String && ((String) principal).equals("anonymousUser")))
            modelAndView.addObject("currentUser", principal);

        String requestUrl = request.getRequestURI().substring(1);
        LinkedHashMap<String, String> linkUrl = new LinkedHashMap<String, String>();

        String crumbs[] = requestUrl.split("/");
        for (int i = 0; i < crumbs.length; i++) {
            String url = crumbs[i];
            for (int v = 0; v < i; v++)
                crumbs[i] = crumbs[v] + "/" + crumbs[i];

            linkUrl.put(url, crumbs[i]);
        }

        modelAndView.addObject("currentUrl", linkUrl);

        modelAndView.addObject("globalMessage", globalProperties.get("globalMessage"));
    }
}
