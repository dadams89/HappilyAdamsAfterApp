<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Happily Adams After</title>
    <style>
    .form-check-label{
    	    font-size: .8rem;
    }
    </style>
    <%@ include file="/WEB-INF/view/linksandscripts.jsp" %>
  </head>
  <body>
    <!-- HEADER -->
	<%@ include file="/WEB-INF/view/nav.jsp" %>
	
	<div class="container-fluid">
	  <div class="row align-items-center mt-5 mb-5">
	    <div class="col">
	    </div>
	    <div class="col-7" style="opacity: .92;">
	    	<div class="card bg-light">
  				<div class="card-body">
  					<c:if test="${error == true}">
			    		<div class="alert alert-danger mb-3 mt-3 text-center" role="alert">
						  Unfortunately, you forgot to enter your first/last name or your RSVP value!<br>
						  Please try again.
						</div>
			    	</c:if>
  					<h3 class="text-center">RSVP</h3>
  					<h5 class="text-center">${guest.firstName} ${guest.lastName}</h5>
  				
				    <form:form action="${pageContext.request.contextPath}/action/submit" class="mt-3" method="POST" modelAttribute="Guest">
				      <form:hidden path="firstName" value="${guest.firstName}"/>
				      <form:hidden path="lastName" value="${guest.lastName}"/>
				      <form:hidden path="id" value="${guest.id}"/>
				      <form:hidden path="plusOne" value="${guest.plusOne}"/>
					  <div class="form-group">
					    <label for="email">Email Address</label>
					    <input type="email" class="form-control" name="email" id="email" placeholder="Email Address">
					  </div>
					  <label for="rsvp">Are you able to attend?</label>
					  <div class="form-check" id="rsvp">
						  <input class="form-check-input" type="radio" name="coming" id="comingRadio" value="1" checked>
						  <label class="form-check-label" for="comingRadio">
						    Joyfully Accept!
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="coming" id="notComing" value="0">
						  <label class="form-check-label" for="notComingRadio">
						    Regretfully Decline :(
						  </label>
						</div>
						<c:if test="${guestPlusOne == true}">
							<label for="guest" class="mt-3">Will you be bringing a guest?</label>
							<select class="custom-select" id="guestComing" name="plusOne">
							  <option value="1" selected>Yes</option>
							  <option value="0">No</option>
							</select>
						</c:if>
					  <div class="form-group mt-3">
					    <label for="comments">Comments</label>
					    <textarea class="form-control" name="comments" id="comments" placeholder="Comments..." rows="5"></textarea>
					  </div>
					  <button type="submit" class="btn btn-secondary">Submit</button>
					</form:form>
				</div>
			</div>
	    </div>
	    <div class="col">
	    
	    </div>
	  </div>
	</div>
  </body>
</html>