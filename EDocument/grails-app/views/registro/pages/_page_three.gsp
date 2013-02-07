<af:page>
<h1>Cuenta Usuario</h1>
<div class="control-group">
	<label class="control-label" for="username">User Name</label>
	<div class="controls">
		<g:textField name="username" id="username" required="" value="${Cuenta?.username}"/>	
	</div>
</div>
<div class="control-group">
	<label class="control-label" for="password">Password</label>
	<div class="controls">
		<g:passwordField name="password" id="password" required="" value="${Cuenta?.password}"/>	
	</div>
</div>
<div class="control-group">
	<label class="control-label" for="password">Repeat Password</label>
	<div class="controls">
		<g:passwordField name="password" id="password" required="" value="${Cuenta?.repeatPassword}"/>	
	</div>
</div>
</af:page>
