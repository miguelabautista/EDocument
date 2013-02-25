<af:page>
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
                                <g:textField name="organizacionNombre" required="" placeholder="Organizacion"
                                             value="${Organizacion?.organizacionNombre}"/>
                                <span class="help-inline">*</span>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="organizacionNombreCorto">Alias</label>

                            <div class="controls">
                                <g:textField name="organizacionNombreCorto" required="" placeholder="Alias"
                                             value="${Organizacion?.organizacionNombreCorto}"/>
                                <span class="help-inline">*</span>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="organizacionRif">R.I.F</label>

                            <div class="controls">
                                <g:textField name="organizacionRif" required="" placeholder="R.I.F"
                                             value="${Organizacion?.organizacionRif}"/>
                                <span class="help-inline">*</span>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="organizacionDireccion">Direccion</label>

                            <div class="controls">
                                <g:textField name="organizacionDireccion" required="" placeholder="Direccion"
                                             value="${Organizacion?.organizacionDireccion}"/>
                                <span class="help-inline">*</span>
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label" for="organizacionTelefono1">Telefono</label>

                            <div class="controls">
                                <g:textField name="organizacionTelefono1" required="" placeholder="Telefono"
                                             value="${Organizacion?.organizacionTelefono1}"/>
                                <span class="help-inline">*</span>
                            </div>
                        </div>

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
                                <span class="help-inline">*</span>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="apellido">Apellido</label>

                            <div class="controls">
                                <g:textField name="apellido" required="" placeholder="Apellido"
                                             value="${Organizacion?.apellido}"/>
                                <span class="help-inline">*</span>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="cedula">Cedula</label>

                            <div class="controls">
                                <g:textField name="cedula" required="" placeholder="Cedula"
                                             value="${Organizacion?.cedula}"/>
                                <span class="help-inline">*</span>
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

    <div class="alert alert-info">* campos requeridos</div>
</af:page>
