<html>
<head>
<meta name='layout' content='principal' />
<title>E-Document</title>
<r:require modules="jquery-ui,bootstrap,bootstrap-responsive-css" />
<script type='text/javascript'>

//(function() {
	//	document.forms['loginForm'].elements['j_username'].focus();
	//})();

function authAjax() {
	jQuery('#loginUpdate').html('Accediendo...');
    jQuery.ajax({
                 type:'POST',
                 data:$('#ajaxLoginForm').serialize(),        
                 url:'${request.contextPath}/j_spring_security_check',
                 success:function(data,textStatus){ 
                  if(data.success){
                        procesar();
                   }else{
                            jQuery('#loginUpdate').html(data.error);
                   }
                     
                 },
                 error:function(XMLHttpRequest,textStatus,errorThrown){}
    });
}
function cancelLogin(){
		$('#user,#password').val("");
		
}
function procesar(){
	$('#myModal').modal('hide').on('hidden', function(){
            jQuery('#myModal').html(''); 

    });   
    $.get("${createLink(controller:'principal',action:'respuesta')}",function(data,status){
          	$('#cambio').html(data);
  		console.log('esta adentro');
  	});
  
}
</script>
</head>
<body>

	<div id="cambio">

	<h1>Solucion Gestor Documental</h1>
	<p class="lead" style="text-align: inherit;">
		<span>E-Document</span> es un servicio dirigido a las empresas
		pequeñas y medianas y a los profesionales y personas que requieren
		manejar importantes volúmenes de documentos o que simplemente
		requieren tenerlos disponibles en línea y compartirlos con sus
		clientes y proveedores.
	</p>
	
	<g:remoteLink class="btn" controller="registro" action="index" update="cambio">Registrar</g:remoteLink>
	
	<a href="#myModal" role="button" class="btn" data-toggle="modal">Ingresar</a>

	<g:render template="/loginAjax" />
	
	</div>
	

</body>
</html>
