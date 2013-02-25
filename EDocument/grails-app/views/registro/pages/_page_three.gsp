<af:page>
	<div id="planSeleccionado">
	<h5>Seleccione un tipo de plan Dando Click en el titulo</h5>

	<legend><g:remoteLink action="planSeleccionado" params="[plan:'planBajo']" update="planSeleccionado">Plan Bajo</g:remoteLink></legend>

	<div>Cantidad de usuarios = 10</div>
	<div>Cantidad de espacio = 3G</div>
	<div>Precio = 45 Bs.F</div>
	
	<br/>
	
	<legend><g:remoteLink action="planSeleccionado" params="[plan:'planMedio']" update="planSeleccionado">Plan Medio</g:remoteLink></legend>
	
	<div>Cantidad de usuarios = 30</div>
	<div>Cantidad de espacio = 6G</div>
	<div>Precio = 80 Bs.F</div>
	
	<br/>
	
	<legend><g:remoteLink action="planSeleccionado" params="[plan:'planAlto']" update="planSeleccionado">Plan Alto</g:remoteLink></legend>
	<div>Cantidad de usuarios = 40</div>
	<div>Cantidad de espacio = 8G</div>
	<div>Precio = 110 Bs.F</div>
	
	</div>
	
</af:page>
