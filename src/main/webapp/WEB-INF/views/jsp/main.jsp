<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Well 3D viewer</title>

<!--spring:url value="/resources/core/css/hello.css" var="coreCss" /-->
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<spring:url value="/resources/core/css/themes/default/style.min.css" var="jstreeCss" />
<!--link href="${coreCss}" rel="stylesheet" /-->
<link href="${bootstrapCss}" rel="stylesheet" >

<link href="${jstreeCss}" rel="stylesheet" />


<style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 600px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;}
    }
    
  </style>
</head>
<body>
<!----------------------------------------------------------------------------->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/main">Home</a></li>
        <li><a href="/well/84756">Well</a></li>
        <li><a href="/hello">Hello</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<!----------------------------------------------------------------------------->
<div class="container-fluid text-center">
  <div class="row content">
    <div id="tree" class="col-sm-2 sidenav" style="overflow: auto; text-align: left; ">       
    </div>
    <div class="col-sm-8 text-left">
    </div>  
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>    
<!----------------------------------------------------------------------------->
<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>
    
<!--spring:url value="/resources/core/js/hello.js" var="coreJs" /-->
<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />
<spring:url value="/resources/core/js/jquery-3.1.1.min.js" var="jqueryJs" />
<spring:url value="/resources/core/js/jstree.min.js" var="jstreeJs" />
 
<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="${jqueryJs}"></script>
<script src="${jstreeJs}"></script>
<script> // needed only if you do not supply JSON headers
   
$('#tree').jstree({
        "core" : {
                "multiple" : false, 
                "data" : {
                        "url" : "/resources/core/json/root.json",
                        "dataType" : "json" // needed only if you do not supply JSON headers
                },
                "force_text" : true,
		"check_callback" : true
        },
        "plugins" : [ "contextmenu" , "wholerow" ]
});

$('#tree').on("changed.jstree", function (e, data) {
    if(data.selected.length) {
        alert('The selected node is: ' + data.instance.get_node(data.selected[0]).id);
    }
});

</script>
</body>
</html>
