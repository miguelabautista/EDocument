<%
    /**
     * wizard refresh flow action
     *
     * When a page (/ partial) is rendered, any DOM event handlers need to be
     * (re-)attached. The af:ajaxButton, af:ajaxSubmitJs and af:redirect tags
     * supports calling a JavaScript after the page has been rendered by passing
     * the 'afterSuccess' argument.
     *
     * Example:	af:redirect afterSuccess="onPage();"
     * 		af:redirect afterSuccess="console.log('redirecting...');"
     *
     * Generally one would expect this code to add jQuery event handlers to
     * DOM objects in the rendered page (/ partial).
     *
     * @author Jeroen Wesbeek <work@osx.eu>
     * @package AjaxFlow
     */
%>
<script type="text/javascript">
    function onPage() {

    }
    function corroborarCamposOrganizacion() {
        var variables = $.makeArray($("#collapseOne input"));

        if ($(variables[0]).val().length != 0 && $(variables[1]).val().length != 0 && $(variables[2]).val().length != 0 && $(variables[3]).val().length != 0 && $(variables[4]).val().length != 0) {
            $("#botoncollapseOne, #flecha").removeAttr("style");
        } else {
            $("#botoncollapseOne, #flecha").attr('style','display:none');
        }
    }



</script>

