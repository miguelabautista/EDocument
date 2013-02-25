<g:render template="/principal/menu"/>

<h3>Seleccione una opcion</h3>
<br/>

<div class="accordion" id="accordion2">
<div class="accordion-group">
    <div class="accordion-heading">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
            Organizacion
        </a>
    </div>

    <div id="collapseOne" class="accordion-body collapse">
        <div class="accordion-inner">
            <br/>

            <div id="cambioOrganizacionDatos">
                <table id="tablaOrganizacion" class="table table-bordered">

                    <tr>
                        <th>Nombre</th>
                        <td>
                            ${user?.organizacion?.nombre}
                        </td>
                    </tr>
                    <tr>
                        <th>Alias</th>
                        <td>
                            ${user?.organizacion?.nombreCorto}
                        </td>
                    </tr>
                    <tr>
                        <th>R.I.F</th>
                        <td>
                            ${user?.organizacion?.rif}
                        </td>
                    </tr>
                    <tr>
                        <th>Direccion</th>
                        <td>
                            ${user?.organizacion?.direccion}
                        </td>
                    </tr>
                    <tr>
                        <th>Telefono</th>
                        <td>
                            ${user?.organizacion?.telefono}
                        </td>
                    </tr>
                    <tr>
                        <th>Email</th>
                        <td>
                            ${user?.organizacion?.email}
                        </td>
                    </tr>
                    <tr>
                        <th>Pago Mensual</th>
                        <td>
                            ${user?.organizacion?.monto}
                        </td>
                    </tr>
                    <tr>
                        <th>Fecha de pago</th>
                        <td>
                            ${user?.organizacion?.fechaPago}
                        </td>
                    </tr>
                    <tr>
                        <th>Vigencia</th>
                        <td>
                            ${user?.organizacion?.vigencia == false ? true : false}
                        </td>
                    </tr>

                </table>
                <br/>
                <g:remoteLink class="btn btn-primary" controller="principal" action="modificar"
                              params="[tipo: 'organizacionModificacion', organizacion: user]"
                              update="cambioOrganizacionDatos">Modificar</g:remoteLink>
            </div>
        </div>
    </div>
</div>

<div class="accordion-group">
    <div class="accordion-heading">

        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
            Datos Usuario
        </a>
    </div>

    <div id="collapseTwo" class="accordion-body collapse">
        <div class="accordion-inner">
            <br/>

            <div id="cambioUsuarioDatos">
                <table id="tablaUsuario" class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Cedula o R.I.F</th>
                        <th>email</th>
                        <th>Direccion</th>
                        <th>Telefono</th>
                        <th>Permisologia</th>
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

                        <td>
                            Administrador
                        </td>
                    </tr>
                    </tbody>
                </table>
                <br/>
                <g:remoteLink class="btn btn-primary" controller="principal" action="modificar"
                              params="[tipo: 'usuarioModificacion', user: user.id]"
                              onFailure="if(XMLHttpRequest().status == 401){showLogin();}"
                              onSuccess="activar('cuentaLink');"
                              update="cambioUsuarioDatos">Modificar</g:remoteLink>
            </div>

        </div>
    </div>
</div>

<div class="accordion-group">
    <div class="accordion-heading">

        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
            Datos Cuenta
        </a>
    </div>

    <div id="collapseThree" class="accordion-body collapse">
        <div class="accordion-inner">
            <br/>

            <div id="cambioCuentaDatos">
                <table id="tablaUsuario" class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Username</th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            ${user?.username}
                        </td>
                    </tr>
                    </tbody>
                </table>
                <br/>
                <g:remoteLink class="btn btn-primary" controller="principal" action="modificar"
                              params="[tipo: 'cuentaModificacion', user: user.id]"
                              onFailure="if(XMLHttpRequest().status == 401){showLogin();}"
                              onSuccess="activar('cuentaLink');"
                              update="cambioCuentaDatos">Modificar</g:remoteLink>
            </div>

        </div>
    </div>
</div>
</div>