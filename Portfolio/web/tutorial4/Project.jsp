<%--
  Created by IntelliJ IDEA.
  User: sunyifeng
  Date: 2020/6/19
  Time: 7:43 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Yifeng.Project</title>
    <link rel="import" href="navigation_bar.jsp" id="bar">
    <link rel="stylesheet" type="text/css" href="../css/PagesCSS.css">
    <script type="text/javascript" src="../jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            // var projectBoxList = $('.bigBox');
            // // console.log(projectBoxList);
            // // console.log(projectBoxList[0].firstChild);
            // // console.log(projectBoxList[0].innerText);
            // var projectList = {};
            // for(i = 0; i < projectBoxList.length; i ++){
            //     projectList[i] = projectBoxList[i].innerText;
            // }
            // console.log(projectList);
            // console.log("sorted by attributes:");
            // alert(projectBoxList[0].childNodes);
            // console.log(projectBoxList[0].childNodes);
            // for(i = 0; i < 3; i ++){
            //     var project = {};
            //     // console.log(projectBoxList[i].children[1]);
            //     project.pTitle = projectBoxList[i].children[0].innerText;//odd indexed children are <br>s.
            //     project.pSummary = projectBoxList[i].children[2].innerText;
            //     project.pDesc = projectBoxList[i].children[4].innerText;
            //     project.pType = projectBoxList[i].children[6].innerText;
            //     project.pHyperlink = projectBoxList[i].children[8].innerText;
            //     projectList[i] = project;
            // }
            // console.log("The list below is generated dynamically using a loop.");
            // console.log(projectList);

            // function loadProject() {
            //     // alert("clicked");
            //     $("#loadTarget").html()
            // }

            // $(".clickToLoad").click(loadProject);
            // //
            // // function alertText(text){alert(text)};
            // //
            // // $.ajax({url:"../tutorial3/someString.txt", success:alertText});
            //
            // function insertLine(line){
            //     $("#loadTarget").html(line);
            // }
            //
            // $.ajax({url:"../tutorial3/insertedLine.txt", success:insertLine})



            // $(".clickToLoad").click(insertLine);
            // $("#loadTarget").removeClass('clickToLoad');
            $("#1").click(insertProject1);
            $("#2").click(insertProject2);
            $("#3").click(insertProject3);
            $(".addBoxBox").click(addInputBox);

        })
        var jsonObj1 = {};
        var jsonObj2 = {};
        var jsonObj3 = {};
        $.getJSON("../tutorial3/project1.json", function(json) {
            // console.log(json); // this will show the info it in console
            jsonObj1 = json;
            // console.log(jsonObj1.pDesc);
        });
        $.getJSON("../tutorial3/project2.json", function(json) {
            // console.log(json); // this will show the info it in console
            jsonObj2 = json;
            // console.log(jsonObj1.pDesc);
        });
        $.getJSON("../tutorial3/project3.json", function(json) {
            // console.log(json); // this will show the info it in console
            jsonObj3 = json;
            // console.log(jsonObj1.pDesc);
        });

        // var obj = JSON.parse(jsonObj);
        // console.log(obj);
        // console.log($(jsonObj).serialize());


        // alert(jsonObj);
        // function insertLine() {
        //
        //     function insertAjaxResult(address, resultRegion) {
        //         $.ajax({
        //             url: address,
        //             success: function(text) {
        //                 insertText(text, resultRegion);
        //             }
        //         });
        //     }
        //
        //     function insertText(text, resultRegion) {
        //         $(resultRegion).html(text);
        //     }
        function insertProject1() {
            $("#1").html("<div class=\"detailBox pTitle\"><span> " +
                jsonObj1.pTitle +
                "</span></div><br>\n" +
                "<div class=\"detailBox pSummary\"><span>" +
                jsonObj1.pSummary +
                "</span></div><br>\n" +
                "<div class=\"detailBox pDesc\"><span>" +
                jsonObj1.pDesc +
                "</span></div><br>\n" +
                "<div class=\"detailBox pType\"> <span>" +
                jsonObj1.pType +
                "</span></div><br>\n" +
                "<div class=\"detailBox pHyperlink\"><a href=\"" +
                jsonObj1.pHyperlink +
                "\">Github Link...</a></div>");

            $("#1").removeClass('clickToLoad');
        }
        function insertProject2() {
            $("#2").html("<div class=\"detailBox pTitle\"><span> " +
                jsonObj2.pTitle +
                "</span></div><br>\n" +
                "<div class=\"detailBox pSummary\"><span>" +
                jsonObj2.pSummary +
                "</span></div><br>\n" +
                "<div class=\"detailBox pDesc\"><span>" +
                jsonObj2.pDesc +
                "</span></div><br>\n" +
                "<div class=\"detailBox pType\"> <span>" +
                jsonObj2.pType +
                "</span></div><br>\n" +
                "<div class=\"detailBox pHyperlink\"><a href=\"" +
                jsonObj2.pHyperlink +
                "\">Github Link...</a></div>");

            $("#2").removeClass('clickToLoad');
        }
        function insertProject3() {
            $("#3").html("<div class=\"detailBox pTitle\"><span> " +
                jsonObj3.pTitle +
                "</span></div><br>\n" +
                "<div class=\"detailBox pSummary\"><span>" +
                jsonObj3.pSummary +
                "</span></div><br>\n" +
                "<div class=\"detailBox pDesc\"><span>" +
                jsonObj3.pDesc +
                "</span></div><br>\n" +
                "<div class=\"detailBox pType\"> <span>" +
                jsonObj3.pType +
                "</span></div><br>\n" +
                "<div class=\"detailBox pHyperlink\"><a href=\"" +
                jsonObj3.pHyperlink +
                "\">Github Link...</a></div>");

            $("#3").removeClass('clickToLoad');
        }

        var haveInputBox = flase;
        function addInputBox(){
            if (haveInputBox){
                alert("Please finish the current input first.")
                return;
            }
            haveInputBox = true;
            $(".addBoxBox").before("<div class=\"bigBox inputBox\">\n" +
                "    <form style=\"margin-top: 5%; margin-left: 5%\" onsubmit=\"return addNewBox();\">\n" +
                "        Project title:<br>\n" +
                "        <input type=\"text\" name=\"newPTitle\">\n" +
                "        <br>\n" +
                "        Summary:<br>\n" +
                "        <input type=\"text\" name=\"newPSummary\">\n" +
                "        <br>\n" +
                "        Description:<br>\n" +
                "        <input type=\"text\" name=\"newPDesc\">\n" +
                "        <br>\n" +
                "        Type:<br>\n" +
                "        <input type=\"text\" name=\"newPType\">\n" +
                "        <br>\n" +
                "        HyperLink:<br>\n" +
                "        <input type=\"text\" name=\"newPHyperlink\">\n" +
                "        <br><br>\n" +
                "        <input type=\"submit\" value=\"OK\" class=\"submitBtn\">\n" +
                "    </form>\n" +
                "</div>");
        }

        function addNewBox(){
            var newProject = {};
            newProject.pTitle = $("input[name = 'newPTitle']").val();
            newProject.pSummary = $("input[name = 'newPSummary']").val();
            newProject.pDesc = $("input[name = 'newPDesc']").val();
            newProject.pType = $("input[name = 'newPType']").val();
            newProject.pHyperlink = $("input[name = 'newPHyperlink']").val();
            // alert(newProject.pTitle);

            $(".addBoxBox").before("<div class='bigBox'>" +
                "<div class=\"detailBox pTitle\"><span> " +
                newProject.pTitle +
                "</span></div><br>\n" +
                "<div class=\"detailBox pSummary\"><span>" +
                newProject.pSummary +
                "</span></div><br>\n" +
                "<div class=\"detailBox pDesc\"><span>" +
                newProject.pDesc +
                "</span></div><br>\n" +
                "<div class=\"detailBox pType\"> <span>" +
                newProject.pType +
                "</span></div><br>\n" +
                "<div class=\"detailBox pHyperlink\"><a href=\"" +
                newProject.pHyperlink +
                "\">Github Link...</a></div></div>");

            $(".inputBox").remove();
            haveInputBox = false;

            return false;
        }
        //
        //     insertAjaxResult("../tutorial3/lineToInsert.txt",
        //         "#loadTarget");
        // }

        // function insertProject() {
        //
        //     function insertAjaxResult(address, resultRegion) {
        //         $.ajax({
        //             url: address,
        //             data: {"pDesc": "The aim of this program is to help user managing their timetable, by generate a timeline using the information given by the user, and send WeChat notification if the user want to get reminded.",
        //                 "pHyperlink": "",
        //                 "pSummary": "A web based program to run on WeChat platform.",
        //                 "pTitle": "OnTime",
        //                 "pType": "Using Web technology."},
        //             dataType:"json",
        //             type:"get",
        //             success: function(text) {
        //                 insertText(text, resultRegion);
        //                 alert(text);
        //             }
        //         });
        //     }
        //
        //     function insertText(text, resultRegion) {
        //         $(resultRegion).html(text);
        //     }
        //
        //     // var objJSON = $.get("../tutorial3/project1.json");
        //     //
        //     // console.log(objJSON);
        //
        //
        //
        //     insertAjaxResult("../tutorial3/generateBigBox.jsp",
        //         "#loadTarget");
        // }

    </script>
</head>
<body>
<iframe   src="navigation_bar.jsp" width="100%" height="auto" frameborder="0" name="bar" scrolling="no">
</iframe>
<br style="margin-bottom: 10px">
<h1 style="margin-left: 10%">Projects I am involved in:</h1>
<div class="bigBox clickToLoad" id="1">

    <div><span>Click to load this project.</span></div>
    <!--    第一个项目-->
    <!--    <div>-->
    <!--        <table border="1">-->
    <!--            <tr>-->
    <!--                <th>Title</th>-->
    <!--                <th>Summary</th>-->
    <!--                <th>Description</th>-->
    <!--                <th>Type of project</th>-->
    <!--                <th>Hyperlink</th>-->
    <!--            </tr>-->
    <!--        </table>-->
    <!--    </div>-->

    <!--    <div class="detailBox pTitle"><span>OnTime</span></div><br>-->
    <!--    <div class="detailBox pSummary"><span>A web based program to run on WeChat platform.</span></div><br>-->
    <!--    <div class="detailBox pDesc"><span>The aim of this program is to help user managing their timetable, by generate a timeline using the information given by the user, and send WeChat notification if the user want to get reminded. </span></div><br>-->
    <!--    <div class="detailBox pType">Using Web technology.</div><br>-->
    <!--    <div class="detailBox pHyperlink"><a href="">This project does not actually exist (yet).</a></div>-->
</div>

<div class="bigBox clickToLoad" id="2">
    <div><span>Click to load this project.</span></div>
    <!--    第二个项目-->
    <!--    <div class="detailBox pTitle"><span>MotionFlow</span></div><br>-->
    <!--    <div class="detailBox pSummary"><span>An arduino related project.</span></div><br>-->
    <!--    <div class="detailBox pDesc"><span>This project created a boxing glove, which has LEDs on its surface and a accelerometer inside when the logic models detect punch, the LED matrix display animation.  </span></div><br>-->
    <!--    <div class="detailBox pType">Using Arduino technology.</div><br>-->
    <!--    <div class="detailBox pHyperlink"><a href="https://github.com/YIFENGSCOTT/MotionFlow">Github Link...</a></div>-->
</div>
<div class="bigBox clickToLoad" id="3">
    <div><span>Click to load this project.</span></div>
    <!--    第三个项目-->
    <!--    <div class="detailBox pTitle"><span>NEUCloudClinic</span></div><br>-->
    <!--    <div class="detailBox pSummary"><span>A Java/JavaFX based project.</span></div><br>-->
    <!--    <div class="detailBox pDesc"><span>This project models the basic process of a patient's visit to the clinic, and provides a GUI running JavaFX.</span></div><br>-->
    <!--    <div class="detailBox pType"> <span>Using Java/JavaFX technology.</span></div><br>-->
    <!--    <div class="detailBox pHyperlink"><a href="https://github.com/YIFENGSCOTT/NeueduClinic">Github Link...</a></div>-->
</div>
<!--<div class="bigBox clickToLoad" id="loadTarget">-->
<!--    <div><span>Click to load more projects.</span></div>-->
<!--</div>-->



<div class="addBoxBox clickToLoad">
    <div><span>Click here to add a project.</span></div>
</div>
<div class="addBoxBox clickToLoad">
    <div><a href="load_n_edit.jsp">Load and edit projects.</a></div>
</div>
<iframe class="footerFrame" src="footer.jsp" width="100%" height="auto" frameborder="0" name="bar" scrolling="no">
</iframe>
</body>
</html>