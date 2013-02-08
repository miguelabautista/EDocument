<html>
<head>
<meta name='layout' content='principal' />
<title>E-Document</title>
<r:require modules="jquery,jquery-ui,bootstrap,bootstrap-responsive-css" />
<script type='text/javascript'>

	/*window.onbeforeunload = function() {
    return 'You have unsaved changes!';
	}*/

//(function() {
	//	document.forms['loginForm'].elements['j_username'].focus();
	//})();

function authAjax() {
	$('#loginUpdate').html('Accediendo...');
    $.ajax({
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
            $('#myModal').html(''); 

    });   
    $.get("${createLink(controller:'principal',action:'respuesta')}",function(data,status){
          	$('#cambio').html(data);  		
  	});
   
  	$("#botonOut").html('<g:link controller="logout">log out</g:link>');	
  
}

</script>
</head>
<body>

	<div id="cambio">
    
		<sec:ifLoggedIn>
			<g:render template="/principal/principal"/>
		</sec:ifLoggedIn>
		<sec:ifNotLoggedIn>
			<g:render template="/inicio"/>
		</sec:ifNotLoggedIn>
				
	</div>
	
</body>
</html>
