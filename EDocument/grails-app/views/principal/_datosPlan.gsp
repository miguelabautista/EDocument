<g:render template="/principal/menu"/>
<div>Datos Organizacion</div>
<br/>
<table id="tablaPlan" class="table table-bordered">
	<thead>
		<tr>
			<th>Tipo</th>
			<th>Usuarios</th>
			<th>Costo</th>
		</tr>
	</thead>
	<tbody>
			<tr>			
			<td>
				${user?.tipo}
			</td>
			
			
			<td>
				${user?.usuarios}
			</td>
						
			<td>
				${user?.costo}
			</td>

			</tr>
	</tbody>
</table>
<br/>
<g:remoteLink class="btn btn-primary" controller="principal" action="modificar"
              params="[tipo: 'planModificacion',user:user]">Modificar</g:remoteLink>