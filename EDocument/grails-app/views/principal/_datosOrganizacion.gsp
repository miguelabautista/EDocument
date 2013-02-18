<g:render template="/principal/menu"/>
<div>Datos Organizacion</div>
<br/>
<table id="tablaOrganizacion" class="table table-bordered">
    <thead>
    <tr>
        <th>Nombre</th>
        <th>R.I.F</th>
        <th>Direccion</th>
        <th>Telefono</th>
        <th>Email</th>
        <th>Pago Mensual</th>
        <th>Fecha de pago</th>
        <th>Vigencia</th>

    </tr>
    </thead>
    <tbody>
    <tr>

        <td>
            ${user?.organizacion?.nombre}
        </td>

        <td>
            ${user?.organizacion?.rif}
        </td>


        <td>
            ${user?.organizacion?.direccion}
        </td>


        <td>
            ${user?.organizacion?.telefono}
        </td>


        <td>
            ${user?.organizacion?.email}
        </td>

        <td>
            ${user?.organizacion?.monto}
        </td>


        <td>
            ${user?.organizacion?.fechaPago}
        </td>

        <td>
            ${user?.organizacion?.vigencia == false ? true : false}
        </td>

    </tr>
    </tbody>
</table>
 <br/>
<g:remoteLink class="btn btn-primary" controller="principal" action="modificar"
              params="[tipo: 'organizacionModificacion',organizacion:user]">Modificar</g:remoteLink>