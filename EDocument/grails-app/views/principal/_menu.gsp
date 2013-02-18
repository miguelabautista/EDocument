<div id="menu" class="navbar container">
	<div class="navbar-inner">
		<div>
			<div class="nav-collapse collapse">
				<ul class="nav">
						
				  <li class="dropdown">
                 	 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Informacion <b class="caret"></b></a>
                  		<ul class="dropdown-menu">
                    <li><g:remoteLink controller="principal"
								action="retornarDatos" params="[tipo:'cuenta']"
								update="cambio" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Cuenta</g:remoteLink></li>
						<li><g:remoteLink
								controller="principal" action="retornarDatos"
								params="[tipo:'organizacion']" update="cambio" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Organizacion</g:remoteLink></li>
						<li><g:remoteLink controller="principal"
								action="retornarDatos" params="[tipo:'plan']"
								update="cambio" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Plan</g:remoteLink></li>
                  </ul>
                </li>		
				</ul>
			</div>			
		</div>
	</div>
</div>
<a id="mostrar" href="#myModal" role="button" data-toggle="modal" style="display:none"></a>

<g:render template="/login/loginAjax" />