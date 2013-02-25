<%
/**
 * fourth wizard page / tab
 *
 * @author	Jeroen Wesbeek <work@osx.eu>
 * @package AjaxFlow
 */
%>
<af:page>
<h1>Confirmacion</h1>
<div class="control-group">
	<legend>Datos de la cuenta</legend>
	<strong>User Name: </strong><span>${Cuenta?.username}</span>

	<strong>Nombre: </strong><span>${Organizacion?.nombre}</span>
	</br>
	<strong>Apellido: </strong><span>${Organizacion?.apellido}</span>
	</br>
	<strong>Cedula: </strong><span>${Organizacion?.cedula}</span>
	</br>
	<strong>Email: </strong><span>${Organizacion?.email}</span>
	</br>
	<strong>Direccion: </strong><span>${Organizacion?.direccion}</span>
	</br>
	
	<hr/>

	<legend>Tipo de plan</legend>
	<strong>Plan: </strong><span>${Plan?.tipoPlan}</span>

	</br>

</div>
</af:page>
