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
	<br>
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
		
	<strong>Organizacion: </strong><span>${Organizacion?.organizacionNombre}</span>
	</br>
	<strong>Alias: </strong><span>${Organizacion?.organizacionNombreCorto}</span>
	</br>
	<strong>R.I.F: </strong><span>${Organizacion?.organizacionRif}</span>
	</br>
	<strong>Direccion: </strong><span>${Organizacion?.organizacionDireccion}</span>
	</br>
	<strong>Telefono: </strong><span>${Organizacion?.organizacionTelefono1}</span>
	</br>
	<hr/>

	<legend>Tipo de plan</legend>
	<strong>Plan: </strong><span>${Plan?.tipoPlan}</span>

	</br>



</div>
</af:page>
