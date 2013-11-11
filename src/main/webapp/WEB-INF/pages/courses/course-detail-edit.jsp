<p>

<h1>CSE 102</h1>
<sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
    &nbsp;&nbsp;<a id="edit-cancel" href="#">Cancel</a>
</sec:authorize>
</p>
<form>
<table class="table table-bordered table-striped">

        <tr>
            <td class="title-col">Course Identifier</td>
            <td><input type="text" class="fat" onclick="this.select()" value="CSE 102"></td>
        </tr>
        <tr>
            <td class="title-col">
                Course Name
            </td>
            <td>
                <input type="text" class="fat" onclick="this.select()" value="Introduction to Web Design and Programming">
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Coordinator
            </td>
            <td>
                <select class="fat">
                    <option value="ahmad-esmaili" selected="selected">Ahmad Esmaili</option>
                    <option value="skyler-white">Skyler White</option>
                </select>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Alternate Course Coordinators:
            </td>
            <td>
                <select class="fat">
                    <option value="walter-white" selected="selected">Walter White</option>
                    <option value="skyler-white">Skyler White</option>
                </select>

            </td>
        </tr>
        <tr>
            <td class="title-col">
                Degree Programs
            </td>
            <td>
                <select class="fat">
                    <option value="cse" selected="selected">Computer Science</option>
                    <option value="ise">Information Systems</option>
                </select>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Outcomes:
            </td>
            <td>
                <p><textarea class="fat">Develop the students ability to create Web pages using validated XHTML standards.</textarea>
                    </p>
                <p><textarea class="fat">Introduce the students to the use of Cascading Style Sheets for formatting the presentation of Web pages, and the principles of what makes good Web page style.</textarea>
                </p>
                <p>
                    <textarea class="fat">Introduce the students to effective page layout principles and the use of CSS positioning for effective Web page layout.</textarea>
                </p>
                <p>
                    <textarea class="fat">Introduce the students to WYSIWYG tools for creating well designed and organized Web sites.</textarea>
                </p>

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
    <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Submit'/>
</form>
<script type="text/javascript">
    $("#edit-cancel").click(function(){
        $( "#course-home" ).load( "/courses/cse102" );
    });
    $("#submit").click(function(){
        $( "#course-home" ).load( "/courses/cse102" );
    });
</script>