<!DOCTYPE html>
<html>
<head>
<title><g:layoutTitle default="E-Document Cloud Service" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<link rel="stylesheet"
	href="${resource(dir:'css',file:'mainBootstrap.css')}" />
	<link rel="stylesheet"
	href="${resource(dir:'css',file:'form.css')}" />
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<link rel="shortcut icon"
	href="${resource(dir:'images',file:'logo.png')}" />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'registar.css')}"/>

<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<div class="bordeexterno">
	<div class="container-narrow">
	
		<header class="masthead">

			<a title="Home" href="${createLink(uri:'/')}"><img
				id="logoImagen" src="${resource(dir:'images',file:'logo.png') }" /></a>

			<h3 id="titulo" class="muted">E-Document Service Cloud</h3>

			<div id="clear"></div>
			
			<nav>	
				<ul class="nav nav-pills pull-right" style="display:inline;">
					<li id="botonOut" class="active"><sec:ifLoggedIn>
							<g:link controller="logout">log out</g:link>
						</sec:ifLoggedIn>
					</li>
				</ul>
			</nav>

		</header>
		
		
		<hr>
		<div id="menuTem"></div>
		<div class="jumbotron">

			<g:layoutBody />
			<r:layoutResources />
		</div>

		<hr>
		<footer class="footer">
			<p style="text-align: center; color: #0000ff;">Novatec</p>
		</footer>
	</div>
	</div>
</body>
</html>
