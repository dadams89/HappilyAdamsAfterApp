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
    <%@ include file="/WEB-INF/view/linksandscripts.jsp" %>
  </head>
  <body>
    <!-- HEADER -->
	<nav class="navbar navbar-expand-md navbar-light bg-light" style="opacity: .8;">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mx-auto">
	  <li class="nav-item">
	    Happily Adams After
	    <br>
	  </li>
	</ul>
  </div>
</nav>
	
	<div class="container-fluid">
	  <div class="row align-items-center mt-5">
	    <div class="col">
	    </div>
	    <div class="col-5" style="opacity: .92;">
	    	<c:if test="${error == true}">
	    		<div class="alert alert-danger mb-3 text-center" role="alert">
				  Unfortunately, we couldn't find your name on the list!<br>
				  Please try to re-enter your name in a different way to check again.
				</div>
	    	</c:if>
			<div class="card bg-light">
  				<div class="card-body">
				    <form:form action="${pageContext.request.contextPath}/action/validate" method="POST" modelAttribute="Guest">
					  <div class="form-group">
					    <label for="firstName">First Name</label>
					    <input type="text" name="firstName" class="form-control" id="firstName" placeholder="First Name">
					  </div>
					  <div class="form-group">
					    <label for="lastName">Last Name</label>
					    <input type="text" name="lastName" class="form-control" id="lastName" placeholder="Last Name">
					  </div>
					  <button type="submit" class="btn btn-secondary mt-2">Submit</button>
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