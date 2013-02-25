<%
/**
 * main ajax flow template
 *
 * @author	Jeroen Wesbeek <work@osx.eu>
 * @package AjaxFlow
 */
%>
<div id="ajaxflow">
<af:flow name="Registro" class="ajaxFlow" commons="common" partials="pages" spinner="ajaxFlowWait" controller="[controller: 'Registro', action: 'pages']">
	
	<af:triggerEvent name="next" afterSuccess="onPage();" />
</af:flow>
<g:if env="development">
<af:error class="ajaxFlowError">
	
</af:error>
</g:if>
</div>
<g:render template="common/on_page"/>
<g:render template="common/please_wait"/>
