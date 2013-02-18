function activar(id){
    var dato = "#" + id;
    $(dato).addClass('active');
}

function cargando(){
    $("#cambio").html('');
    $('#cambio').html('<i class="icon-spinner icon-spin" style="margin:auto auto"></i>');
}