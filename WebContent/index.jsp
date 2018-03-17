<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Bitcoin Asset Transaction System Service</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css"/>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  		crossorigin="anonymous"></script>    
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>
    <!-- <link href="<c:url value="/libs/DataTables/datatables.min.css" />" rel="stylesheet">
    <script src="<c:url value="/libs/DataTables/jQuery-3.2.1/jquery-3.2.1.min.js" />"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="<c:url value="/libs/DataTables/datatables.min.js" />"></script>-->
    
    <style>
      a.disabled {
        pointer-events: none;
      }
      .affix {
	    top:0;
	    width: 100%;
	    z-index: 9999 !important;
	  }
	  .navbar {
	    margin-bottom: 0px;
	  }
	
	  .affix ~ .container-fluid {
	    position: relative;
	    top: 50px;
	  }
	  body {
	    background-color: #3d6277;
	  }
	  #serviceOverview {padding-top:50px;}
	  #pricing {padding-top:50px;}
	  #getStarted {padding-top:50px;}
	  #capabilityDemon {padding-top:50px;}
	  #footer {padding-top:50px;}
    </style>
  </head>
  <body data-spy="scroll" data-target=".navbar" data-offset="50">
    <script>
	  $(document).ready(function() {
	    var sample = $('#example');
	    sample.DataTable({
          "ajax": {
        	  "url":"https://raw.githubusercontent.com/htsungwing/BATS/master/sampleData.json",
        	  "type":"GET"
          },
          "columns": [
	        {"data":"DoP"},
	        {"data":"DA"},
	        {"data":"DSD"},
	        {"data":"P"},
	        {"data":"COB"},
	        {"data":"CfI"},
	        {"data":"AoA"},
	        {"data":"GL"}
	     ]
        });
	  });
    </script>

	<div class="container-fluid" style="background-color:#337ab7;color:white;">
	  <h2>Bitcoin Asset Transaction Service (BATS)</h2>
	</div>

	<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="50">
	  <div class="container-fluid">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>                        
	      </button>
	      <a class="navbar-brand" href="#">BATS</a>
	    </div>
	    <div>
	      <div class="collapse navbar-collapse" id="myNavbar">
	        <ul class="nav navbar-nav">
		      <li class="active"><a href="#">Home</a></li>
		      <li><a href="#serviceOverview">Service Overview</a></li>
		      <li><a href="#pricing">Pricing</a></li>
		      <li><a href="#getStarted">Get Started</a></li>
	   	      <li><a href="#capabilityDemon">Capability Demonstration</a></li>
	        </ul>
	      </div>
	    </div>
	  </div>
	</nav>    

    <div id="serviceOverview" class="container-fluid">
	  <a disabled class="list-group-item active">
	    <h4 class="list-group-item-heading">Service Overview</h4>
	  </a>
	  <a disabled class="list-group-item">
	    <div class="row">
	      <div class="col-sm-5">
        	<h4>BATS simplifies the process of entering all your bitcoin or altcoin investment transactions 
        	into Form 8948 (Sales and Other Dispositions of Capital Assets) which is required by the 
        	U.S. federal government for filing your return.</h4><br/>
        	<h4>This innovative technology transforms your CSV document listing of transactions directly 
        	into organized copies of form 8948 in moments to save you the time of manually entering in each row 
        	of transactions by hand.</h4>
		  </div>
	      <div class="col-sm-6">
            <embed src="https://www.irs.gov/pub/irs-pdf/f8949.pdf" width="100%" height="300px" />
		  </div>
	    </div>
	  </a>
	</div>
	
	<div id="pricing" class="container-fluid">
	  <a disabled class="list-group-item active">
	    <h4 class="list-group-item-heading">Pricing</h4>
	  </a>
	  <a disabled class="list-group-item">
	    <p>Description</p>
	  </a>	
	</div>
	
	<div id="getStarted" class="container-fluid">  
	  <a disabled class="list-group-item active">
	    <h4 class="list-group-item-heading">Get Started</h4>
	  </a>
	  <a disabled class="list-group-item">
	    <p>Description</p>
	  </a>
	</div>
	
	<div id="capabilityDemon" class="container-fluid">
  	  <a disabled class="list-group-item active">
	    <h4 class="list-group-item-heading">Capability Demonstration</h4>
	  </a>
	  <a disabled class="list-group-item">
	  	<p>
	  	  <h4 class="list-group-item-heading">Step 1 - Upload Transaction Data</h4><br/>
          <table id="example" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>a) Description of Property</th>
                <th>b) Date Acquired</th>
                <th>c) Date Sold/Disposed</th>
                <th>d) Proceed</th>
                <th>e) Cost/Other Basis</th>
                <th>f) Code(s) from Instruction</th>
                <th>g) Amount of Adjustment</th>
                <th>h) Gain/Loss</th>
              </tr>
            </thead>
          </table>
        </p>
	  </a>
	</div>
	<div id="footer" class="container-fluid">
      <footer class="page-footer font-small blue pt-4 mt-4" style="color:white;"> 
		<div class="footer-copyright py-3 text-center">
		  <%! int defineVar = 0; %>
		  <%= request.getContextPath() %><br/>
		  <%= (new java.util.Date()).toLocaleString()%><br/>
		  <%-- out.println("Your IP: "+request.getRemoteAddr());--%>
		  © 2018 Copyright &nbsp;
		  <a href="#"  style="color:#bfffff;"> BATS.com </a>
		</div>
	  </footer>
	</div>
	</body>
</html>