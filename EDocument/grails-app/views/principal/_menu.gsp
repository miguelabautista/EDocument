<div id="menu" class="navbar container">
	<div class="navbar-inner">
		<div>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li><g:remoteLink controller="principal" action="informacion" on401="" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }" update="cambio">Informacion</g:remoteLink></li>
					<li><a href="#">Acerca</a></li>
					<li><a href="#contact">Si o que</a></li>
				</ul>
			</div>			
		</div>
	</div>
</div>
<a id="mostrar" href="#myModal" role="button" data-toggle="modal" style="display:none"></a>

<g:render template="/login/loginAjax" />