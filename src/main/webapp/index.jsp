<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="ResourceMapping.js"></script>
</head>
<body>
<form:form method="post" modelAttribute="resource" action="./addResource">
	<div class="container">
		<h2>Resource Mapping Application</h2>
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#home">Enter
					Mind Information</a></li>
			<li><a data-toggle="tab" href="#menu1">Get Mind Information</a></li>
		</ul>
		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<div>
					<form id="form1">
						<div class="form-group row" style="margin-top: 10px;">
							<label for="mid" class="col-sm-2 col-form-label">MID</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="mid">
							</div>
						</div>
						<div class="form-group row" style="margin-top: 10px;">
							<label for="mid" class="col-sm-2 col-form-label">First
								Name</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="firstName">
							</div>
						</div>

						<div class="form-group row" style="margin-top: 10px;">
							<label for="mid" class="col-sm-2 col-form-label">Middle
								Name</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="middleName">
							</div>
						</div>

						<div class="form-group row" style="margin-top: 10px;">
							<label for="mid" class="col-sm-2 col-form-label">Last
								Name</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="lastName">
							</div>
						</div>


						<div class="form-group row" style="margin-top: 10px;">
							<label for="mid" class="col-sm-2 col-form-label">Technologies</label>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="tech1">
							</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="tech2">
							</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="tech3">
							</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="tech4">
							</div>
						</div>


						<div class="form-group row" style="margin-top: 10px;">
							<label for="mid" class="col-sm-2 col-form-label">Certification</label>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="certi1">
							</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="certi2">
							</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="certi3">
							</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="certi4">
							</div>
						</div>

						<div class="form-group row" style="margin-top: 10px;">
							<label for="mid" class="col-sm-2 col-form-label">Projects</label>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="proj1">
							</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="proj2">
							</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="proj3">
							</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="proj4">
							</div>
						</div>

						<div class="form-group row" style="margin-top: 10px;">
							<label for="mid" class="col-sm-2 col-form-label">Application
								Type</label>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="appType1">
							</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="appType2">
							</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="appType3">
							</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="appType4">
							</div>
						</div>

						<div class="form-group row">
							<div class="col-sm-10">
								<button type="submit" onclick="validateForm()"
									class="btn btn-primary">Save</button>
							</div>
						</div>

					</form>
				</div>
			</div>
			<div id="menu1" class="tab-pane fade">
				<div>
					<form id="form2">
						<div class="form-group row" style="margin-top: 10px;">
							<label for="mid" class="col-sm-2 col-form-label">MID /
								Name</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="midName">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-10">
								<button type="button" id="button1" onclick="getDetails()"
									class="btn btn-primary">Get Details</button>
							</div>
						</div>
					</form>

					<div>
						<form id="form3" style="display: none">
							<fieldset disabled>
								<div class="form-group row" style="margin-top: 10px;">
									<label for="mid" class="col-sm-2 col-form-label">MID</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="mid">
									</div>
								</div>
								<div class="form-group row" style="margin-top: 10px;">
									<label for="mid" class="col-sm-2 col-form-label">First
										Name</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="firstName">
									</div>
								</div>

								<div class="form-group row" style="margin-top: 10px;">
									<label for="mid" class="col-sm-2 col-form-label">Middle
										Name</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="middleName">
									</div>
								</div>

								<div class="form-group row" style="margin-top: 10px;">
									<label for="mid" class="col-sm-2 col-form-label">Last
										Name</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="lastName">
									</div>
								</div>


								<div class="form-group row" style="margin-top: 10px;">
									<label for="mid" class="col-sm-2 col-form-label">Technologies</label>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="tech1">
									</div>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="tech2">
									</div>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="tech3">
									</div>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="tech4">
									</div>
								</div>


								<div class="form-group row" style="margin-top: 10px;">
									<label for="mid" class="col-sm-2 col-form-label">Certification</label>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="certi1">
									</div>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="certi2">
									</div>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="certi3">
									</div>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="certi4">
									</div>
								</div>

								<div class="form-group row" style="margin-top: 10px;">
									<label for="mid" class="col-sm-2 col-form-label">Projects</label>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="proj1">
									</div>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="proj2">
									</div>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="proj3">
									</div>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="pro4j">
									</div>
								</div>

								<div class="form-group row" style="margin-top: 10px;">
									<label for="mid" class="col-sm-2 col-form-label">Application
										Type</label>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="appType1">
									</div>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="ap2Type1">
									</div>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="appType3">
									</div>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="appType4">
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type = "submit" value = "Submit"/>
	</form:form>
	</body>
</html>