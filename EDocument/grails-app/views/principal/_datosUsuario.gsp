
<g:render template="/principal/menu"/>
<div>Datos Del Usuario</div>
<br/>

			<table id="tablaUsuario" class="table table-bordered">
				<thead>
					<tr>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Cedula o R.I.F</th>
						<th>email</th>
						<th>Direccion</th>
						<th>Telefono</th>
					</tr>	
				</thead>
				<tbody>
				<tr>
					
					<td>
						${user?.nombre}
					</td>
				
				
					
					<td>
						${user?.apellido}
					</td>
				
					
					<td>
						${user?.cedula_rif}
					</td>
				
					
					<td>
						${user?.email}
					</td>
				
					<td>
						${user?.direccion}
					</td>
									
					<td>
						${user?.telefono}
					</td>
				</tr>
				</tbody>
			</table>
<br/>
<g:remoteLink class="btn btn-primary" controller="principal" action="modificar"
              params="[tipo: 'usuarioModificacion',user:user.id]" onFailure="if(XMLHttpRequest().status == 401){showLogin();}" onSuccess="activar('cuentaLink');" update="cambio">Modificar</g:remoteLink>
<g:remoteLink class="btn btn-primary" controller="principal" action="modificar"
              params="[tipo: 'passwordModificacion',user:user.id]" onFailure="if(XMLHttpRequest().status == 401){showLogin();}" onSuccess="activar('cuentaLink');" update="cambio">Cambiar password</g:remoteLink>