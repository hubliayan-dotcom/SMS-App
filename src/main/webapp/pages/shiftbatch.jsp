<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="d-flex justify-content-center align-center">
		
			<div class="w-50 align-middle border border-info border-3 mt-2" style="height: 700px">
				<h1 class="p-3 text-primary">
					<u>Batch Shifting</u>
				</h1>
				
				<div class="border border-secondary m-3 p-2">
					<table class="table table-hover border border-secondary">
						<tbody>
							<tr class="table table-primary fs-6">
								<th>Student Id</th>
								<td>${stu.studentId}</td>
							</tr>
							<tr class="table table-primary fs-6">
								<th>Student Name</th>
								<td>${stu.studentFullName}</td>
							</tr>
							<tr class="table table-primary fs-6">
								<th>Email </th>
								<td>${stu.studentEmail}</td>
							</tr>
							<tr class="table table-primary fs-6">
								<th>Age</th>
								<td>${stu.studentAge}</td>
							</tr>
							<tr class="table table-primary fs-6">
								<th>College</th>
								<td>${stu.studentCollageName}</td>
							</tr>
							<tr class="table table-primary fs-6">
								<th>Batch Mode</th>
								<td>${stu.batchMode}</td>
							</tr>
							<tr class="table table-primary fs-6">
								<th>Course</th>
								<td>${stu.studentCourse}</td>
							</tr>
							<tr class="table table-primary fs-6">
								<th>Fees Paid</th>
								<td>${stu.feesPaid}</td>
							</tr>
							<tr class="table table-primary fs-6">
								<th>Batch Number</th>
								<td>${stu.batchNumber}</td>
							</tr>	
							
						</tbody>
					</table>
					
					<form action="shiftbatch"> 
        				<input type="text" name="studentId" value="${stu.studentId}" hidden="true"> 
        					<div class="bg-dark p-2  d-flex justify-content-between"> 
        						<label for="batch" class="text-info"><b>Select New Batch</b></label> 
        					<select class="select form-control-sm border" name="batchNumber">
								<option value="#" selected>Select Batch Number</option>
 								<option value="FDJ-196">FDJ-196</option>
 								<option value="REG-198">REG-198</option>
								<option value="FDJ-198">FDJ-198</option>
 								<option value="REG-196">REG-196</option>
							</select>
        					</div> 
        	 					<div class="d-flex justify-content-center pt-5"> 
        							<input type="submit" class="btn btn-success btn-sm " value="shift">
        						</div> 
        			</form> 
					
				</div>
				
			</div>
		
		</div>	

</body>
</html>