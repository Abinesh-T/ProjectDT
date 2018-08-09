<html>
<head>
<link rel="icon"
	href="./resources/images/icon-slc-sa.png">
<title>SA_Softwares</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div style="font-family:cursive" class="container">
		<h2 style="font-family:cursive">Computerized X-Ray Point Gold Assay Report</h2>
		<form style="font-family:cursive" action="UC" method="post">
			<div class="form-group">
				<label for="email">Name:</label> <input type="text"
					class="form-control" id="Name" placeholder="Enter Name"
					name="Name">
					 <c:forEach var="cList" items="${clist}">

                <option style="font-family: cursive" value="${cList.categoryid}">${cList.categoryname}</option>
                </c:forEach>
			</div>
			<div class="form-group">
				<label for="pwd">Sample Type:</label> <input type="text"
					class="form-control" id="Sample_Type" placeholder="Enter Sample Type"
					name="Sample_Type">
			</div>
			<div class="form-group">
				<label for="pwd">Weight:</label> <input type="text"
					class="form-control" id="Weight" placeholder="Enter Weight"
					name="Weight">
			</div>
			<div class="form-group">
			<div class="col-sm-6 form-inline">
				<label for="pwd">Gold	%	:</label> <input type="text"
					class="form-control" id="Gold" placeholder="Enter Gold" name="Gold">
			</div>
			<div class="col-sm-6 form-inline">
				<label for="pwd">Silver	%	:</label> <input type="text"
					class="form-control" id="Silver" placeholder="Enter Silver"
					name="Silver">
			</div>
			<div class="col-sm-6 form-inline">
				<label for="pwd">Copper	%	:</label> <input type="text"
					class="form-control" id="Copper" placeholder="Enter Copper"
					name="Copper">
			</div>
			<div class="col-sm-6 form-inline">
				<label for="pwd">Zinc	%	:</label> <input type="text"
					class="form-control" id="Zinc" placeholder="Enter Zinc" name="Zinc">
			</div>
			<div class="col-sm-6 form-inline">
				<label for="pwd">KDM	%	:</label> <input type="text"
					class="form-control" id="KDM" placeholder="Enter KDM" name="KDM">
			</div>
			<div class="col-sm-6 form-inline">
				<label for="pwd">Nickel	%	:</label> <input type="text"
					class="form-control" id="Nickel" placeholder="Enter Nickel" name="Nickel">
			</div>
			<div class="col-sm-6 form-inline">
				<label for="pwd">Iridium	%	:</label> <input type="text"
					class="form-control" id="Iridium" placeholder="Enter Iridium" name="Iridium">
			</div>
			<div class="col-sm-6 form-inline">
				<label for="pwd">Tin	%	:</label> <input type="text"
					class="form-control" id="Tin" placeholder="Enter Tin" name="Tin">
			</div>
			<div class="col-sm-6 form-inline">
				<label for="pwd">Iron	%	:</label> <input type="text"
					class="form-control" id="Iron" placeholder="Enter Iron" name="Iron">
			</div>
			<div class="col-sm-6 form-inline">
				<label for="pwd">Rhodium	%	:</label> <input type="text"
					class="form-control" id="Rhodium" placeholder="Enter Rhodium" name="Rhodium">
			</div>
			<div class="col-sm-6 form-inline">
				<label for="pwd">Others	%	:</label> <input type="text"
					class="form-control" id="Others" placeholder="Enter Others" name="Others">
			</div>
			</div>
			<div  class="col-sm-12 form-group">
			<center>
					<button type="submit" class="btn btn-lg btn-info" style="font-family:cursive" >Submit</button>
					<button type="reset" class="btn btn-lg btn-info" style="font-family:cursive">Clear</button>
			</center>				
					
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
