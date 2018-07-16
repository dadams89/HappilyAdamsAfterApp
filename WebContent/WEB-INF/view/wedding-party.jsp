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
	
	<div class="container-fluid">
		<div class="row align-items-center m-3 mt-4 text-center">
		    <div class="col">
		    </div>
		    <div class="col-3" style="opacity: .8;">
		    	<div class="bg-light rounded-circle" style="height: 3.5rem;">
		    		<h5 class="pt-3"><b>Wedding Party</b></h5>
		    	</div>
		    </div>
		    <div class="col">
		    </div>
		</div>
	  <div class="row">
	    <div class="col-xl-1 col-sm-0">
	    </div>
	    <div class="col-5 ml-auto" id="bridesmaids">
	    	<div class="card-deck mt-5 mb-5">
				<div class="card ">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295592/IMG_1239.png" >
				  <div class="card-header text-center">
				  	<h4 class="card-title"><b>Maria Rosa</b></h4>
				    <h6 class="card-title">Maid of Honor</h6>
				    <h6 class="card-title">Sister of The Bride</h6>
				  </div>
				  <div class="card-body">
				    <p class="card-text">Older sister that the bride "borrowed" a lot of clothes and a hair straightener from. Aunt to Haley and easy to vent to.
				    Graciously shares her birthday with the bride.</p>
				  </div>
				</div>
				<div class="card ">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295510/IMG_1240.jpg" >
				  <div class="card-header text-center">
				  	<h4 class="card-title">Jessica Lajara</h4>
				    <h6 class="card-title">Bridesmaid</h6>
				    <h6 class="card-title">Friend of The Bride</h6>
				  </div>
				  <div class="card-body">
				    <p class="card-text">Her and the Bride have been friends since 8th grade and have had countless inseparable sleep-overs. They have shared many memories and inside jokes, and are 
				    two of the infamous three stooges hiding behind the boat :)</p>
				  </div>
				</div>
			</div>
			<div class="card-deck mt-5 mb-5">
				<div class="card ">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295590/IMG_1242.png" >
				  <div class="card-header text-center">
				  	 <h4 class="card-title">Michelle Rosa</h4>
				    <h6 class="card-title">Bridesmaid</h6>
				    <h6 class="card-title">Sister of The Bride</h6>
				  </div>
				  <div class="card-body">
				    <p class="card-text">Michelle drove the Bride all over Madison and beyond before she could drive. She would always be sure to show up to wherever the Bride was with loud music to set the tone.
				    She will always be there for her sisters, but 90's music will always be in and dosen't want anyone to forget it!</p>
				  </div>
				</div>
				<div class="card ">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295512/IMG_1241.jpg" >
				  <div class="card-header text-center">
				  	 <h4 class="card-title">Olivia Magnusson</h4>
				    <h6 class="card-title">Bridesmaid</h6>
				    <h6 class="card-title">Friend of The Bride</h6>
				  </div>
				  <div class="card-body">
				    <p class="card-text">Olivia was one of the Bride's anchors to sanity during nursing school. Their friendship grew spending long nights studying until they became the nurses they are 
				    today! Olivia is also planning a wedding of her own and continues to be an anchor to the Bride's sanity through this as well.</p>    
				  </div>
				</div>
			</div>
			<div class="card-deck mt-5 mb-5">
				<div class="card ">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295575/IMG_2446.jpg" >
				  <div class="card-header text-center">
				  	 <h4 class="card-title">Taylor Cline</h4>
				    <h6 class="card-title">Bridesmaid</h6>
				    <h6 class="card-title">Friend of The Bride</h6>
				  </div>
				  <div class="card-body">
				    <p class="card-text">Sleep-overs with video games and Oreo eating challenges that led to a bunch of teenagers screaming are some of their memories shared. Taylor has helped the bride grow in her faith and is 
				    a big part of her journey with God. They have shared missions trip together, chasing lizards and worrying about people thinking that they were Amish.</p>
				  </div>
				</div>
				<div class="card ">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295573/IMG_1243.jpg" >
				  <div class="card-header text-center">
				  	<h4 class="card-title">Lola & Mia Rosa, Carter Briskey</h4>
				    <h6 class="card-title">Junior Bridesmaids & Usher</h6>
				    <h6 class="card-title">Neices & Nephew of The Bride</h6>
				  </div>
				  <div class="card-body">
				    <p class="card-text">Spunky kids who like to rap and school the Bride and Groom in lightsaber techniques. The Bride & Groom have shared memories with these kids such as making crafts, eating tacos and playing 
				    playing with Bride and Groom's dog Haley :)
				    </p>	    
				  </div>
				</div>
			</div>
		</div>
		<div class="col-5 mr-auto" id="Groomsman">
			<div class="card-deck mt-5 mb-5">
		    	<div class="card ">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295571/18485986_10213455537246574_2221829046419610213_n.jpg" >
				  <div class="card-header text-center">
				  	<h4 class="card-title">Billy Wixson</h4>
				    <h6 class="card-title">Best Man</h6>
				    <h6 class="card-title">Best Friend of The Groom</h6>
				  </div>
				  <div class="card-body">
				    <p class="card-text">He and the Groom met in the thrid grade and have been inseparable since. Through moving to different cities and going to different schools, they always remained friends
				    and would do anything for each other. They share memories such as making inappropriate middle-school team projects, building tree houses in the woods (where only we could hangout) and enough camping
				    stories to last a lifetime.</p>
				  </div>
				</div>
				<div class="card ">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295572/29683976_10100101118879513_2650840006771343360_o.jpg" >
				  <div class="card-header text-center">
				  	<h4 class="card-title">Joe Watrobski</h4>
				    <h6 class="card-title">Groomsman</h6>
				    <h6 class="card-title">Cousin of The Groom</h6>
				  </div>
				  <div class="card-body">
				    <p class="card-text">Always a positive role-model to the Groom, Joe spent his time pestering and holding the Groom upside down growing up. Joe and his wife
				    Kellie continue to be positive figures in the Bride and Groom's life, and two of their three children, Regan and Wyatt are the Flower Girl and Ring Bearer.</p>
				  </div>
				</div>
			</div>
			<div class="card-deck mt-5 mb-5">
				<div class="card ">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295573/19247791_10213805628638640_1199822387636358012_n_2.jpg" >
				  <div class="card-header text-center">
				  	<h4 class="card-title">Sam Heintz</h4>
				    <h6 class="card-title">Groomsman</h6>
				    <h6 class="card-title">Cousin of The Groom</h6>
				  </div>
				  <div class="card-body">
				    <p class="card-text">Sam grew up being pestered and held upside down by the Groom. He and the Groom share memories such as jumping on trampolines togther, playing basketball in the basement
				    until putting a hole in the wall and loathing about (but always staying loyal to) our woesome Cleveland Browns.</p>
				  </div>
				</div>
				<div class="card ">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295463/28700986_10204520068199810_1062838429767710516_o.jpg" >
				  <div class="card-header text-center">
				  	<h4 class="card-title">Anthony Rosa</h4>
				    <h6 class="card-title">Groomsman</h6>
				    <h6 class="card-title">Cousin of The Bride</h6>
				    <h6 class="card-title">Super Buff Exercise Scientist</h6>
				  </div>
				  <div class="card-body text-center">
				    <p class="card-text">Anthony was one of the many to welcome the Groom into the Bride's family with open arms. He and the Groom enjoy spending their free time competing for the title of Grandma Rosa's "Boy".</p>
				  </div>
				</div>
			</div>
			<div class="card-deck mt-5 mb-2">
				<div class="card" style="font-family: 'Shadows Into Light Two', cursive;    font-size: 1.5rem;">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295485/29792896_10100101119443383_7318967637839446016_o.jpg" >
				  <div class="card-header text-center">
				  	<h4 class="card-title">Regan & Wyatt Watrobski</h4>
				    <h6 class="card-title">Flower Girl & Ring Bearer</h6>
				    <h6 class="card-title">Cousin of The Groom & Godson of The Groom</h6>
				  </div>
				  <div class="card-body">
				    <p style="font-size: 1.3rem;">Two of the cutest kids ever, the Bride and Groom have watched them grow into awesome little kids. Regan has more headbands than any over girl in the word. Wyatt loves watching his movies. From making cupcakes and cookies to jumping on each other like monkeys, these two have brought so much fun into both 
				    the Bride and Groom's life.</p>
				  </div>
				</div>
				<div class="card ">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295574/IMG_4287.jpg" >
				  <div class="card-header text-center">
				  	<h4 class="card-title">Nick Lauer</h4>
				    <h6 class="card-title">Groomsman</h6>
				    <h6 class="card-title">Friend of The Groom</h6>
				  </div>
				  <div class="card-body">		    
				    <p class="card-text">Nick and the Groom's friendship started working togther in Sherwin-Williams Corporate IT Department as interns. They were not initially working on the same team but 
				    their obvious business value & collaboration skills forced Sherwin to put them on a team together (Portal Team for life!). Nick and the Groom have shared many memories such as celebrating
				    Cleveland's first championship, watching countless movies and having long conversations with their work-mom Lori.</p>		    
				  </div>
				</div>
			</div>
			
	    </div>
	    <div class="col-xl-1 col-sm-0">
	    </div>
	  </div>
	  <div class="row align-items-center m-5 text-center">
		    <div class="col">
		    </div>
		    <div class="col-3" style="opacity: .8;">
		    	<div class="bg-light rounded-circle" style="height: 3.5rem;">
		    		<h5 class="pt-3"><b>Pets</b></h5>
		    	</div>
		    </div>
		    <div class="col">
		    </div>
		</div>
	  <div class="row mb-5">
	    <div class="col">
	    </div>
	    <div class="col-4 mb-5" id="petsmen">
				<div class="card ">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295481/IMG_5131.jpg" >
				  <div class="card-header text-center">
				  	<h4 class="card-title">Haley</h4>
				    <h6 class="card-title">Dog of Honor</h6>
				    <h6 class="card-title">Diva of The House</h6>
				  </div>
				  <div class="card-body text-center">
				    <p class="card-text">Haley is the constant supply of love and affection that the Bride & Groom adore. She loves her mani-pedi's and running with her tongue flapping in the breeze.</p>
				  </div>
				</div>
	    </div>
	    <div class="col-4 mb-5" id="petsmen">
	    	<div class="card ">
				  <img class="card-img-top" src="https://res.cloudinary.com/daeklz7vq/image/upload/v1523295464/30127894_10213103357233292_1875423935386877952_n.png" >
				  <div class="card-header text-center">
				  	<h4 class="card-title">Macchiato</h4>
				    <h6 class="card-title">Kitty of Honor</h6>
				    <h6 class="card-title">Princess of The House</h6>
				  </div>
				  <div class="card-body">
				    <p class="card-text">Meow's at the Bride & Groom's door at the crack of dawn to make sure they haven awoken safely. Macchiato loves to cuddle (On her own time) and enjoys spending her free time (that is quite limited)
				    gnawing on her sister's legs and yelling at the birds outside.</p>
				  </div>
				</div>
	    </div>
	    <div class="col">
	    </div>
	  </div>
	</div>
  </body>
</html>