<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-limit=1.0" />
    <title>Our Story</title>
    <%@ include file="/WEB-INF/view/linksandscripts.jsp" %>
    <script type="text/javascript">
	    $('#myModal').on('shown.bs.modal', function () {
	    	  $('#myInput').trigger('focus');
	    });
	    $(function(){
	    	$('.card').click(function(){
	    		$('#pic').attr('src',$(this).find('img').attr('src'));
	    		$('#myModal').modal('show');
	    		$('body').attr('style','');
	    	});
	    });
    </script>
  </head>
  <body>
    <!-- HEADER -->
	<%@ include file="/WEB-INF/view/nav.jsp" %>
	
	<div class="container-fluid">
		<div class="row align-items-center m-5 text-center">
		    <div class="col">
		    </div>
		    <div class="col-3" style="opacity: .8;">
		    	<div class="bg-light rounded-circle" style="height: 3.5rem;">
		    		<h5 class="pt-3"><b>Marisa & Daniel</b></h5>
		    	</div>
		    </div>
		    <div class="col">
		    </div>
		</div>
	  <div class="row align-items-center">
	    <div class="col">
	    </div>
	    <div class="col-10">
	    	<div class="card-columns">
			  <div class="card">
			    <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/c_limit,w_600/DSC_2110.jpg" alt="Card image cap">
			  </div>
			  <div class="card">
			    <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/c_limit,w_600/DSC_2054.jpg" alt="Card image cap">
			  </div>
			  <div class="card">
			    <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/c_limit,w_600/DSC_2072.jpg" alt="Card image cap">
			  </div>
			  <div class="card">
			    <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/c_limit,w_600/DSC_2059.jpg" alt="Card image cap">
			  </div>
			  <div class="card">
			    <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/c_limit,w_600/DSC_2087.jpg" alt="Card image cap">
			  </div>
			  <div class="card">
			    <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/c_limit,w_600/DSC_2116.jpg" alt="Card image cap">
			  </div>
			  <div class="card">
			    <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/c_limit,w_600/DSC_2151.jpg" alt="Card image cap">
			  </div>
			  <div class="card">
			    <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/c_limit,w_600/DSC_2120.jpg" alt="Card image cap">
			  </div>
			  <div class="card">
			    <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/c_limit,w_600/DSC_2129.jpg" alt="Card image cap">
			  </div>
			  <div class="card">
			    <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/c_limit,w_600/DSC_2070.jpg" alt="Card image cap">
			  </div>
			  <div class="card">
			    <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/c_limit,w_600/DSC_2104.jpg" alt="Card image cap">
			  </div>
			  <div class="card">
			    <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/c_limit,w_600/DSC_2137.jpg" alt="Card image cap">
			  </div>
			  <div class="card">
			    <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/c_limit,w_600/DSC_2156.jpg" alt="Card image cap">
			  </div>
			</div>
	    </div>
	    <div class="col">
	    </div>
	  </div>
	</div>
	
	<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <img id="pic" class="card-img-top" src="">
      </div>
    </div>
  </div>
</div>
	
	<%@ include file="/WEB-INF/view/footer.jsp" %>
  </body>
</html>