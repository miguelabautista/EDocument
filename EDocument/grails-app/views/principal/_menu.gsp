<g:javascript src="informacion.js"/>
<div id="menu" class="navbar container">
	<div class="navbar-inner">
		<div>
			<div class="nav-collapse collapse">
				<ul class="nav" style="margin-left: 210px;">
				       <li id="cuentaLink"><g:remoteLink controller="principal"
								action="retornarDatos" params="[tipo:'cuenta']"
								update="cambio" onSuccess="activar('cuentaLink');" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Cuenta</g:remoteLink></li>
						<li id="organizacionLink"><g:remoteLink
								controller="principal" action="retornarDatos" onSuccess="activar('organizacionLink');"
								params="[tipo:'organizacion']" update="cambio" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Organizacion</g:remoteLink></li>
						<li id="planLink"><g:remoteLink controller="principal"
								action="retornarDatos" params="[tipo:'plan']"
								update="cambio" onSuccess="activar('planLink');" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Plan</g:remoteLink></li>
						<li id="usuariosLink"><g:remoteLink controller="principal"
						    	action="retornarDatos" params="[tipo:'usuarios']"
								update="cambio"  onSuccess="activar('usuariosLink');" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Usuarios</g:remoteLink></li>
				        <li id="gestorLink"><g:remoteLink controller="principal" action="retornarDatos" params="[tipo:'gestor']"  onSuccess="activar('gestorLink');" onFailure="if(XMLHttpRequest().status == 401){showLogin();}">
                            Gestor Documental
				        </g:remoteLink> </li>
                </ul>
			</div>			
		</div>
	</div>
</div>
<a id="mostrar" href="#myModal" role="button" data-toggle="modal" style="display:none"></a>

<g:render template="/login/loginAjax" />