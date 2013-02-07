<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" 
 aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true" onclick="cancelLogin();return false;">×</button>
		<h3 id="myModalLabel">
			Iniciar sesion
		</h3>
	</div>
	<div id='login'>
		<form id='ajaxLoginForm' name='ajaxLoginForm'
			action='${request.contextPath}/j_spring_security_check' method='POST'
			id='loginForm' class='cssform'>
			<div class="modal-body">


				<div id="loginUpdate" class='inner'>
					
				</div>
				
				<div id="invalidsession" ></div>

				<p>
					<input type='text' id="user" class='text_' name='j_username' id='username'
						required=""
						placeholder="${message(code:'springSecurity.login.username.label')}" />
				</p>

				<p>
					<input type='password' id="password" class='text_' name='j_password' required=""
						id='password'
						placeholder="${message(code:'springSecurity.login.password.label')}" />
				</p>


				<p id="remember_me_holder">
					<input type='checkbox' class='chk' name='${rememberMeParameter}'
						id='remember_me'
						<g:if test='${hasCookie}'>checked='checked'</g:if> /> <label
						for='remember_me'><g:message
							code="springSecurity.login.remember.me.label" /></label>
				</p>



				<div class="">
					<a id="loginButton" href='javascript:void(0)' class="btn btn-primary"
						onclick='authAjax(); return false;'>Ingresar</a> 
					<a href='javascript:void(0)' class="btn" data-dismiss="modal"
						aria-hidden="true" onclick='cancelLogin(); return false;'>Cancelar</a>
				</div>
			</div>
		</form>
	</div>
</div>




