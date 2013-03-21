<af:page>
    <button id="botoncollapseTwo" type="button" class="btn btn-danger" data-toggle="collapse" data-target="#collapseTwo"
            style="display:none;">
        collapseTwo
    </button>

    <div class="accordion" id="accordion2">
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                    Organizacion
                </a>
            </div>

            <div id="collapseOne" class="accordion-body collapse in">
                <div class="accordion-inner">
                    <br/>

                    <div class="form-horizontal">
                        <div class="control-group">
                            <label class="control-label" for="organizacionNombre">Organizacion</label>

                            <div class="controls">
                                <g:textField id="organizacionNombre" title="Nombre de la Organizacion"
                                             name="organizacionNombre" oninput="corroborarCamposOrganizacion();"
                                             required=""
                                             placeholder="Organizacion"
                                             value="${Organizacion?.organizacionNombre}"/>
                                <span id="campoRequerido${hasErrors(bean: Organizacion, field: 'organizacionTelefono1', 'error')}"
                                      title="campo Requerido" class="help-inline"><i id="flecha" class="icon-asterisk"></i></span>

                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="organizacionNombreCorto">Alias</label>

                            <div class="controls">

                                <g:textField id="organizacionNombreCorto" title="Alias de la Organizacion"
                                             name="organizacionNombreCorto"
                                             oninput="corroborarCamposOrganizacion();"
                                             required="" placeholder="Alias"
                                             value="${Organizacion?.organizacionNombreCorto}" maxlength="12"/>

                                <span title="campo Requerido"
                                      id="campoRequerido${hasErrors(bean: Organizacion, field: 'organizacionTelefono1', 'error')}"
                                      class="help-inline"><i id="flecha" class="icon-asterisk"></i></span>

                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="organizacionRif">R.I.F</label>

                            <div class="controls">
                                <g:textField id="organizacionRif" title="R.I.F de la Organizacion"
                                             name="organizacionRif" oninput="corroborarCamposOrganizacion();"
                                             required=""
                                             placeholder="R.I.F"
                                             value="${Organizacion?.organizacionRif}" onKeyUp="validarRIF();" maxlength="12"/>
                                <span title="campo Requerido"
                                      id="campoRequerido${hasErrors(bean: Organizacion, field: 'organizacionTelefono1', 'error')}"
                                      class="help-inline"><i id="flecha" class="icon-asterisk"></i></span>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="organizacionDireccion">Direccion</label>

                            <div class="controls">
                                <g:textField id="organizacionDireccion" title="Direccion de la Organizacion"
                                             name="organizacionDireccion" oninput="corroborarCamposOrganizacion();"
                                             required=""
                                             placeholder="Direccion"
                                             value="${Organizacion?.organizacionDireccion}"/>
                                <span title="campo Requerido"
                                      id="campoRequerido${hasErrors(bean: Organizacion, field: 'organizacionTelefono1', 'error')}"
                                      class="help-inline"><i id="flecha" class="icon-asterisk"></i></span>
                            </div>
                        </div>


                        <div class="control-group">

                            <label class="control-label" for="organizacionTelefono1">Telefono</label>

                            <div class="controls">

                                <g:textField id="organizacionTelefono1" title="Telefono de la Organizacion"
                                             oninput="corroborarCamposOrganizacion();" name="organizacionTelefono1"
                                             required=""
                                             placeholder="Telefono"
                                             value="${Organizacion?.organizacionTelefono1}" />

                                <span title="campo Requerido"
                                      id="campoRequerido${hasErrors(bean: Organizacion, field: 'organizacionTelefono1', 'error')}"
                                      class="help-inline"><i id="flecha" class="icon-asterisk"></i></span>
                            </div>
                        </div>
                        
                         <div class="control-group">
                            <label class="control-label" for="organizacionEmail">Email</label>

                            <div class="controls">

                                <g:textField id="organizacionEmail" title="Email de la Organizacion"
                                             name="organizacionEmail"
                                             oninput="corroborarCamposOrganizacion();"
                                             required="" placeholder="Email"
                                             value="${Organizacion?.organizacionEmail}"/>

                                <span title="campo Requerido"
                                      id="campoRequerido${hasErrors(bean: Organizacion, field: 'organizacionEmail', 'error')}"
                                      class="help-inline"><i id="flecha" class="icon-asterisk"></i></span>

                            </div>
                        </div>
                        

                        <i id="flecha" class="icon-arrow-down icon-large" style="display:none"></i>
                        <button id="botoncollapseOne" type="button" class="btn-mini btn-info"
                                data-toggle="collapse"
                                data-target="#collapseOne" style="display:none"
                                onclick="$('#botoncollapseTwo').click();">
                            Continuar
                        </button>

                    </div>

                </div>
            </div>
        </div>

        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                    Usuario
                </a>
            </div>

            <div id="collapseTwo" class="accordion-body collapse">
                <div class="accordion-inner">
                    <br/>

                    <div class="form-horizontal">
                        <div class="control-group">
                            <label class="control-label" for="nombre">Nombre</label>

                            <div class="controls">
                                <g:textField name="nombre" required="" placeholder="Nombre"
                                             value="${Organizacion?.nombre}"/>
                                <span title="campo Requerido" id="campoRequerido" class="help-inline"><i id="flecha" class="icon-asterisk"></i></span>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="apellido">Apellido</label>

                            <div class="controls">
                                <g:textField name="apellido" required="" placeholder="Apellido"
                                             value="${Organizacion?.apellido}"/>
                                <span title="campo Requerido" id="campoRequerido" class="help-inline"><i id="flecha" class="icon-asterisk"></i></span>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="cedula">Cedula</label>

                            <div class="controls">
                                <g:textField id="nameUser" name="cedula" required="" placeholder="Cedula"
                                             value="${Organizacion?.cedula}" onKeyUp="validarCedulaUsuario();"/>
                                <span id="cedulaStatus" title="campo Requerido" id="campoRequerido" class="help-inline"><i id="flecha" class="icon-asterisk icon-small"></i></span>
                            </div>
                        </div>
                        
                        <div class="control-group">
                            <label class="control-label" for="telefono">Telefono</label>

                            <div class="controls">
                                <g:textField name="telefono" required="" placeholder="Telefono"
                                             value="${Organizacion?.telefono}"/>
                                <span id="cedulaStatus" title="campo Requerido" id="campoRequerido" class="help-inline"><i id="flecha" class="icon-asterisk icon-small"></i></span>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="email">Email</label>

                            <div class="controls">
                                <g:textField name="email" required="" placeholder="Email"
                                             value="${Organizacion?.email}"/>
                                <span class="help-inline"></span>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="direccion">Direccion</label>

                            <div class="controls">
                                <g:textField name="direccion" placeholder="Direccion"
                                             value="${Organizacion?.direccion}"/>
                                <span class="help-inline"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="banner${hasErrors(bean: Organizacion, 'error')}" class="alert alert-alert">* <g:hasErrors
            bean="${Organizacion}" field="organizacionDireccion">
        <g:if test="${Organizacion.errors.allErrors.size()} != 0 ">
            <g:message code="default.blank.message" default="Alias" args="['Direccion']"/>
        </g:if>
    </g:hasErrors></div>
</af:page>
