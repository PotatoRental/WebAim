<form>
<table class="table table-bordered table-striped">

        <tr>
            <td class="title-col">Course Identifier</td>
            <td><input type="text" required name="id" class="fat" placeholder="Course Identifier"></td>
        </tr>
        <tr>
            <td class="title-col">
                Course Name
            </td>
            <td>
                <input type="text" required class="fat" placeholder="Course Name" name="name">
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Coordinator
            </td>
            <td>
                <select class="fat" name="course-coordinator" required>
                    <option value="Course-Coordinator" disabled selected="selected">Select Course Coordinator</option>
                    <option value="ahmad-esmaili">Ahmad Esmaili</option>
                    <option value="skyler-white">Skyler White</option>
                </select>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Alternate Course Coordinators:
            </td>
            <td>
                <select class="fat" name="alt-course-coordinator" required>
                    <option value="Alt-Course-Coordinator" disabled selected="selected">Select Alternate Course Coordinator</option>
                    <option value="walter-white">Walter White</option>
                    <option value="skyler-white">Skyler White</option>
                </select>

            </td>
        </tr>
        <tr>
            <td class="title-col">
                Degree Program
            </td>
            <td>
                <select class="fat" name="degree-programs">
                    <option value="degree-program" disabled selected="selected">Select Degree Program</option>
                    <option value="cse">Computer Science</option>
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