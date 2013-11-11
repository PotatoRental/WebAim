<p>
    <h1>CSE 102</h1>
    <sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
        &nbsp;&nbsp;<a id="edit-course" href="#">Edit</a>
    </sec:authorize>
</p>
<table class="table table-bordered table-striped">
    <tr>
        <td class="title-col">Course Identifier</td>
        <td>CSE 102</td>
    </tr>
    <tr>
        <td class="title-col">
            Course Name
        </td>
        <td>
            Introduction to Web Design and Programming
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Course Coordinator
        </td>
        <td>
            <a href="#">Ahmad Esmaili</a>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Alternate Course Coordinators:
        </td>
        <td>
            <a href="#">Walter White</a>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Degree Programs
        </td>
        <td>
            Bachelor of Science in Computer Science
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Course Outcomes:
        </td>
        <td>
            <ul>
                <li>

                    Develop the students ability to create Web pages using validated XHTML standards.

                </li>
                <li>

                    Introduce the students to the use of Cascading Style Sheets for formatting the presentation of Web pages, and the principles of what makes good Web page style.

                </li>
                <li>

                    Introduce the students to effective page layout principles and the use of CSS positioning for effective Web page layout.

                </li>
                <li>

                    Introduce the students to WYSIWYG tools for creating well designed and organized Web sites.

                </li>
            </ul>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Course Offerings
        </td>
        <td>
            <a href="#">View Course Offerings</a>
        </td>
    </tr>
</table>

<script type="text/javascript">
    $("#edit-course").click(function(){
        $( "#course-home" ).load( "/courses/cse102-edit" );
    });
</script>