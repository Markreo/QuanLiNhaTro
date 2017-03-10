    abc
<g:each in="${services.find {it.unit == com.quanlinhatro.Service.Unit.CHIEC}}" var="s">
    <label class="col-xs-3">Tháng này sẽ cho thuê bao nhiêu ${s.unit.name} ${s.name}?</label>
    <div class="col-xs-3 ">
        <input name="service" class="form-control" /> </input>
    </div>
</g:each>
