<%@ page import="com.quanlinhatro.Service" %>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<g:each in="${services.findAll {it.unit.NEEDGETVALUES}}" var="s">
    <g:if test="${s.unit == com.quanlinhatro.Service.Unit.CHIEC}">
        <div class="row">
            <label class="col-xs-3">Tháng này sẽ cho thuê bao nhiêu ${s.unit.name} ${s.name}?</label>
            <div class="col-xs-3 ">
                <g:hiddenField name="serviceId" value="${s.id}"/>
                <input name="value" class="form-control" required/>
            </div>
            <div class="col-xs-6"></div>
        </div>
    </g:if>
    <g:if test="${s.unit == com.quanlinhatro.Service.Unit.KGW}">
        <div class="row">
            <label class="col-xs-3">Số điện hiện tại:</label>
            <div class="col-xs-3 ">
                <g:hiddenField name="serviceId" value="${s.id}"/>
                <input name="value" class="form-control" required/>
            </div>
            <div class="col-xs-6"></div>
        </div>
    </g:if>
    <g:if test="${s.equals(com.quanlinhatro.Service.Unit.M3_2)}">
        <label class="col-xs-3">Số nước hiện tại:</label>
        <div class="col-xs-3 ">
            <g:hiddenField name="serviceId" value="${s.id}"/>
            <input name="value" class="form-control" required/>
        </div>
        <div class="col-xs-6"></div>
    </g:if>

</g:each>
</div>