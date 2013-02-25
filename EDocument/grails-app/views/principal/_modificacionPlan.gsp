<g:render template="/principal/menu"/>

   <div id="planSeleccionado">
    <h3>Seleccione un tipo de plan</h3>

    <legend><g:remoteLink controller="principal" action="actualizarPlan" params="[plan:'planBajo']" "update="planSeleccionado">Plan Bajo</g:remoteLink></legend>

    <div>Cantidad de usuarios = 10</div>
    <div>Cantidad de espacio = 3g</div>
    <div>Precio = 45 Bs.F</div>
    
    <br/>
    
    <legend><g:remoteLink controller="principal" action="actualizarPlan" params="[plan:'planMedio']" update="planSeleccionado">Plan Medio</g:remoteLink></legend>
    
    <div>Cantidad de usuarios = 30</div>
    <div>Cantidad de espacio = 6g</div>
    <div>Precio = 80 Bs.F</div>
    
    <br/>
    
    <legend><g:remoteLink controller="principal" action="actualizarPlan" params="[plan:'planAlto']" update="planSeleccionado">Plan Alto</g:remoteLink></legend>
    <div>Cantidad de usuarios = 40</div>
    <div>Cantidad de espacio = 8g</div>
    <div>Precio = 110 Bs.F</div>
    
    </div>

    <div class="control-group">
        <div class="controls">
            
            
            <br/>
            <g:remoteLink class="btn" name="cancelarRespuesta" controller="principal" action="respuesta" update="cambio" onFailure="if(XMLHttpRequest().status == 401){showLogin();}">Cancelar</g:remoteLink>
        </div>
    </div>


