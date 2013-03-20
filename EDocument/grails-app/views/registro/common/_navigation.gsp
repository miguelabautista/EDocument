
<g:set var="showPrevious" value="${page>1 && page<pages.size}"/>
<g:set var="showNext" value="${page<pages.size}"/>
<af:navigation events="[previous:[label:'&laquo; Anterior',show: showPrevious], next:[label:'Siguiente &raquo;', show:showNext]]" separator="&nbsp; | &nbsp;" class="btn-mini btn-primary"/>
