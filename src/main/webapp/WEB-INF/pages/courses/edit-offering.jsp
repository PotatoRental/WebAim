<p>

<h1>CSE 102-01</h1>
<sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
    &nbsp;&nbsp;<a id="edit-cancel" href="#">Cancel</a>
</sec:authorize>
</p>

<form>
    <table class="table table-bordered table-striped">
        <tr>
            <td class="title-col">Course</td>
            <td>
                <select class="fat">
                    <option value="cse102" selected="selected">CSE 102</option>
                    <option value="cse110">CSE 110</option>
                </select>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Section
            </td>
            <td>
                <input type="text" class="fat" onclick="this.select()" value="1">
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Semester
            </td>
            <td>
                <select>
                    <option value="Fall" selected="selected">Fall</option>
                    <option value="Spring">Spring</option>
                </select>
                <select>
                    <option value="2013" selected="selected">2013</option>
                    <option value="2012">2012</option>
                </select>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Instructor
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
                Syllabus
            </td>
            <td>
                <a href="#">syllabus.pdf </a>
                <br/>
                <input type='submit' class="btn btn-default blue-hover" value='Upload File'/>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Schedule
            </td>
            <td>
                <a href="#">schedule.pdf</a>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Lecture Notes
            </td>
            <td>
                <ul class="list-unstyled">
                    <li><a href="#">11-07-2013.pdf</a></li>
                    <li><a href="#">11-08-2013.pdf</a></li>

                </ul>
                <input type='submit' class="btn btn-default blue-hover" value='Upload File(s)'/>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Assignments
            </td>
            <td>
                <ul class="list-unstyled">
                    <li><a href="#">HW 1: Basic HTML</a></li>
                    <li><a href="#">HW 2: Links and Images</a></li>
                    <li><a href="#">HW 3: Tables and Lists</a></li>
                    <li><a href="#">HW 4: CSS</a></li>
                </ul>
                <input type='submit' class="btn btn-default blue-hover" value='Upload File(s)'/>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Outcome Attainment Target
            </td>
            <td>
                the target fraction
                of students expected to achieve that course outcome.
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Outcome Direct Assessments
            </td>
            <td>
                hi
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Outcome Survey Results
            </td>
            <td>
                hi
            </td>
        </tr>
        <tr>
            <td class="title-col">
                End-of-Semester Report
            </td>
            <td>
                <a href="#">report.txt</a>
                <br/>
                <input type='submit' class="btn btn-default blue-hover" value='Upload File'/>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Coordinator Report
            </td>
            <td>
                <a href="#">report.txt</a>
                <br/>
                <input type='submit' class="btn btn-default blue-hover" value='Upload File'/>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                CIC Report
            </td>
            <td>
                <a href="#">report.txt</a>
                <br/>
                <input type='submit' class="btn btn-default blue-hover" value='Upload File'/>
            </td>
        </tr>

    </table>
    <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Submit'/>
</form>

<script type="text/javascript">
    $("#edit-cancel").click(function () {
        $("#offering-home").load("/courses/view-offering");
    });
    $("#submit").click(function(){
        $( "#course-home" ).load( "/courses/view-offering" );
    });
</script>