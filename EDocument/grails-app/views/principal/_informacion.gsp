<div>
	<g:render template="menu" />

	

	
			<div id="menuVertical" class="btn-group">
				
						<button><g:remoteLink controller="principal"
								action="retornarDatos" params="[tipo:'cuenta']"
								update="cambioDatos" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Cuenta</g:remoteLink></button>
						<button><g:remoteLink
								controller="principal" action="retornarDatos"
								params="[tipo:'organizacion']" update="cambioDatos" >Organizacion</g:remoteLink></button>
						<button><g:remoteLink controller="principal"
								action="retornarDatos" params="[tipo:'plan']"
								update="cambioDatos">Plan</g:remoteLink></button>
					
			</div>
		

		<div id="cambioDatos"></div>

	</div>