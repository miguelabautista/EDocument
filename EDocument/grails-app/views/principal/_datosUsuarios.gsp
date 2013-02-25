
<g:render template="/principal/menu"/>
<div>Datos De Usuarios de la Organizacion</div>
<br/>
			<table id="tablaUsuarios" class="table table-bordered">
				<thead>
					<tr>
						<th>index</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Cedula o R.I.F</th>
						<th>email</th>
						<th>Direccion</th>
						<th>Telefono</th>
						<th>Role</th>
                        <th> </th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${user}" var="us" status="i">
				<tr>
					<td>${i + 1}</td>
					<td>
						<g:remoteLink controller="principal" action="modificar" update="cambio"        					params='[tipo:"usuarioAModificar",id:"${us.id}"]'>${us.nombre}</g:remoteLink>
					</td>
					
					<td>
						${us.apellido}
					</td>
					
					<td>
						${us.cedula_rif}
					</td>
					
					<td>
						${us.email}
					</td>
					
					<td>
						${us.direccion}
					</td>
					
					<td>
						${us.telefono}
					</td>		
					<td>ROLE_USER</td>
                    <td><a href="#">X</a></td>
				</tr>
				</g:each>
				</tbody>
	</table>
	<g:remoteLink class="btn btn-primary" controller="principal" action="modificar"
              params="[tipo: 'usuariosModificacion',user:user.id]" onFailure="if(XMLHttpRequest().status == 401){showLogin();}" update="cambio">Agregar</g:remoteLink>