<div>
<g:render template="menu"/>
	
	<div>${user?.nombre}</div>
	<div>${user?.apellido}</div>
	<div>${user?.cedula_rif}</div>
	<div>${user?.email}</div>
	<div>${user?.direccion}</div>
	<div>${user?.telefono}</div>
	<hr/>
	<div>${user?.organizacion?.nombre}</div>
	<div>${user?.organizacion?.rif}</div>
	<div>${user?.organizacion?.direccion}</div>
	<div>${user?.organizacion?.telefono}</div>
	<div>${user?.organizacion?.email}</div>
	<div>${user?.organizacion?.monto}</div>
	<div>${user?.organizacion?.fechaPago}</div>
	<div>${user?.organizacion?.vigencia}</div>
	<div>${user?.organizacion?.dateCreated}</div>
	<div>${user?.organizacion?.plan}</div>
</div>