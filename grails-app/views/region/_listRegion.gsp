<g:each in="${regions}" var="r">
    <a href="#" class="pull-left" style="width: 100%">${r.name}</a>
</g:each>
<a href="#" class="pull-left" style="width: 100%">test</a>
<a href="#" class="pull-left"  style="width: 100%">test2</a>
<a href="${createLink(controller: 'region', action: 'create')}" class="pull-left" style="width: 100%" rel="new-tab">Thêm khu <i class="fa fa-angle-double-right"></i> </a>