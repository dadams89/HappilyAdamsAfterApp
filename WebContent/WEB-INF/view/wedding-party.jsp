<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wedding Party</title>
    <%@ include file="/WEB-INF/view/linksandscripts.jsp" %>
    <style>	
    	.btn-light {
    		background-color: #f7f8f8!important;
    	}
    	.card-img-top {
		    width: 100%;
		    object-fit: cover;
		}
		@media (min-width: 34em) {
		    .card-columns {
		        -webkit-column-count:2;
		        -moz-column-count:2;
		        column-count:2;
		        
		    }
		}
    </style>
  </head>
  <body>
    <!-- HEADER -->
	<%@ include file="/WEB-INF/view/nav.jsp" %>
	
	<div class="container-fluid mt-5">
	  <div class="row">
	    <div class="col-xl-1 col-sm-0">
	    </div>
	    <div class="col-5 ml-auto" id="bridesmaids">
	    	<div class="card-deck mt-5 mb-5">
				<div class="card ">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/6shsnzj3huhv224/IMG_1239.PNG?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Maria Rosa</h4>
				    <h6 class="card-title">Maid of Honor</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
				<div class="card ">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/rjehuuhhhlnqi8r/IMG_1240.JPG?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Jessica Lajara</h4>
				    <h6 class="card-title">Bridesmaid</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
			</div>
			<div class="card-deck mt-5 mb-5">
				<div class="card ">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/l4zopdogith06x6/IMG_1242.PNG?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Michelle Rosa</h4>
				    <h6 class="card-title">Bridesmaid</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
				<div class="card ">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/placywwobixj6i9/IMG_1241.JPG?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Olivia Magnusson</h4>
				    <h6 class="card-title">Bridesmaid</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
			</div>
			<div class="card-deck mt-5 mb-5">
				<div class="card ">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/qpx8bb10lsinfvn/IMG_2446.JPG?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Taylor Cline</h4>
				    <h6 class="card-title">Bridesmaid</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
				<div class="card ">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/vhiqidoflis5szu/IMG_1243.JPG?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Lola & Mia Rosa, Carter Briskey</h4>
				    <h6 class="card-title">Junior Bridesmaids & Usher</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
			</div>
		</div>
		<div class="col-5 mr-auto" id="groomsmen">
			<div class="card-deck mt-5 mb-5">
		    	<div class="card ">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/8zky1qoive9kwny/18485986_10213455537246574_2221829046419610213_n.JPG?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Billy Wixson</h4>
				    <h6 class="card-title">Best Man</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
				<div class="card ">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/eiumv99dfyy0zjz/29683976_10100101118879513_2650840006771343360_o.JPG?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Joe Watrobski</h4>
				    <h6 class="card-title">Groomsmen</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
			</div>
			<div class="card-deck mt-5 mb-5">
				<div class="card ">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/ogehs5u19tab8x8/19247791_10213805628638640_1199822387636358012_n%202.JPG?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Sam Heintz</h4>
				    <h6 class="card-title">Groomsmen</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
				<div class="card ">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/kw2iiicbk12l5lu/28700986_10204520068199810_1062838429767710516_o.JPG?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Anthony Rosa</h4>
				    <h6 class="card-title">Groomsmen</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
			</div>
			<div class="card-deck mt-5 mb-5">
		    	<div class="card ">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/w2f40fs4ec1b5ln/IMG_4287.jpg?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Nick Lauer</h4>
				    <h6 class="card-title">Groomsmen</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
				<div class="card" style="font-family: 'Shadows Into Light Two', cursive;    font-size: 1.5rem;">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/l4rjhyi9ljljge3/29792896_10100101119443383_7318967637839446016_o.jpg?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Regan & Wyatt Watrobski</h4>
				    <h6 class="card-title">Flower Girl & Ring Bearer</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
			</div>
			
	    </div>
	    <div class="col-xl-1 col-sm-0">
	    </div>
	  </div>
	  <div class="row">
	    <div class="col-xl col-sm-0">
	    </div>
	    <div class="col-5 mx-auto" id="petsmen">
	    	<div class="card-deck mt-5 mb-5">
				<div class="card ">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/4gejwprhqf7lmds/IMG_5131.JPG?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Haley</h4>
				    <h6 class="card-title">Dog of Honor</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
			</div>
			<div class="card ">
				  <img class="card-img-top" src="https://dl.dropboxusercontent.com/s/pdblrswdflfhehd/30127894_10213103357233292_1875423935386877952_n.png?dl=0" >
				  <div class="card-body text-center">
				    <h4 class="card-title">Macchiato</h4>
				    <h6 class="card-title">Cat of Honor</h6>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    
				  </div>
				</div>
				
	    </div>
	    <div class="col-xl col-sm-0">
	    </div>
	  </div>
	</div>

  </body>
</html>