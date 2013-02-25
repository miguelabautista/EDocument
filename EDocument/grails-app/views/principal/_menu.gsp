<g:javascript src="informacion.js"/>
<div id="menu" class="navbar container">
	<div class="navbar-inner">
		<div>
			<div class="nav-collapse collapse">
				<ul class="nav" style="margin-left: 210px;">
				       <li id="cuentaLink"><g:remoteLink controller="principal"
								action="seleccionMenu" params="[seleccion:'registro']"
								update="cambio" onSuccess="activar('cuentaLink');" onFailure="if (XMLHttpRequest.status==401) { showLogin(); }else{ console.log('otro'); }">Datos Registro</g:remoteLink></li>
						 <li class="dropdown">
                			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Gestion Cuenta<b class="caret"></b></a>
                			<ul class="dropdown-menu">
                  				<li><g:remoteLink controller="principal" action="seleccionMenu" params="[seleccion:'usuarios']" onFailure="if(XMLHttpRequest().status == 401){showLogin();}" update="cambio">
                            	Inclusion de Usuarios
				        		</g:remoteLink> </li>
                 		    	<li><g:remoteLink controller="principal" action="seleccionMenu" params="[seleccion:'planes']" onFailure="if(XMLHttpRequest().status == 401){showLogin();}" update="cambio">
                            	Manejo Planes
				        	</g:remoteLink> </li>
                 				</ul>
             		 	</li>	
             		 	<li id="pagoLink"><g:remoteLink controller="principal" action="seleccionMenu" params="[seleccion:'pagos']" onSuccess="activar('pagoLink');" onFailure="if(XMLHttpRequest().status == 401){showLogin();}" update="cambio">
                            Pagos
				        </g:remoteLink> </li>					
				        <li id="gestorLink"><g:remoteLink controller="principal" action="seleccionMenu" params="[seleccion:'gestor']" onSuccess="activar('gestorLink');" onFailure="if(XMLHttpRequest().status == 401){showLogin();}" update="cambio">
                            Gestor Documental
				        </g:remoteLink> </li>
                </ul>
			</div>			
		</div>
	</div>
</div>
<a id="mostrar" href="#myModal" role="button" data-toggle="modal" style="display:none"></a>

<g:render template="/login/loginAjax" />