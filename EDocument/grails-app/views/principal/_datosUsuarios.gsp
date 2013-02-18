
<g:render template="/principal/menu"/>
<div>Datos Del Usuario</div>
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
					</tr>
				</thead>
				<tbody>
				<g:each in="${user}" var="us" status="i">
				<tr>
					<td>${i + 1}</td>
					<td>
						<a href="">${us.nombre}</a>
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
				</tr>
				</g:each>
				</tbody>
			</table>