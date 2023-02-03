<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<style type="text/css">
		.main{
			height: 100px;
			width: 200px;
			background: hotpink;
			border-radius: 50px;
			text-align: center;
			line-height: 90px;
			font-weight: bold;
			font-size: 20px;
			color: #fff;
			position: relative;
			overflow: hidden;
			z-index: 0;


		}
		.effect{
			height: 200px;
			width: 300px;
			background: linear-gradient(red,blue);
			position: absolute;
			top: 0;
			left: -150%;
			transition: 1s;
			z-index: -1;

		}
		.main:hover .effect{
			left: 0%;
		}
	</style>
</head>
<body>
	<div class="main">
		Hover Me
		<div class="effect"></div>
	</div>

</body>
</html>