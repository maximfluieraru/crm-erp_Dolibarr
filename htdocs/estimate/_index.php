<!DOCTYPE html>
<html>
	<head>
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css" /> 
		<link rel="stylesheet" type="text/css" href="css/estimate.css">
		<!-- <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  -->
		<script type="text/javascript" src="../includes/jquery/js/jquery-latest.min.js"></script>
		<script type="text/javascript" src="js/estimate.js"></script>
		
		
	</head>
	<body>
		<!-- Begin estimate form -->
		
		<form action="" method="get">
			
			<div class="container">	
				<input name="numWalls" id="numWalls" type="hidden" value="1">
				<button  id="addWall" class="btn-default btn-lg glyphicon glyphicon-duplicate">Ajouter Mur</button>

				<div class="estimateWall" >
					<div class="col-lg-12">

						<div>
							<input name="wallWidth" type="text" class="wall width btn btn-default btn-lg" value="0" />
							<div><span>X</span></div>
							<input name="wallLenght" type="text" class="wall lenght btn btn-default btn-lg" value="0" />	
							<input class="wallWL" type="hidden" value="width" />
							<button class="wall add btn btn-sq-lg btn-primary">+</button>
							<button class="wall subtract btn btn-sq-lg btn-primary">-</button>
						</div>						

					</div>
				</div>

				<button class="calculate btn-default btn-lg">Calculer</button>
			</div>
			<div>
				<button class="send btn-default btn-lg">Envoyer</button>
			</div>
			



		</form>

		<!-- End estimate form -->
	
	</body>
</html>

<?php

?>