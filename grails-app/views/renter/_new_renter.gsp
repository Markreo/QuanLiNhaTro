<div class="person">
    <div class="row">
        <div class="edit">
            <img id="current_user" class="img-responsive img-rounded img-circle" src="${resource(dir: 'assets/img', file: 'user_default.jpg')}">
        </div>
        <div class="padding-left-100">
            <div class="col-sm-5">
                <div class="form-group">
                    <span class="input-icon icon-right">
                        <input name="firstname" type="text" class="form-control" placeholder="Họ & Tên đệm">
                        <i class="fa fa-user themeprimary"></i>
                    </span>
                </div>
            </div>
            <div class="col-sm-5">
                <div class="form-group">
                    <span class="input-icon icon-right ">
                        <input name="lastname" type="text" class="form-control" placeholder="Tên">
                        <i class="fa fa-user themeprimary"></i>
                    </span>
                </div>
            </div>
            <div class="col-sm-2 pull-right">
                <div class="checkbox">
                    <label>
                        %{--//TODO: return no without check--}%
                        <input name="sex" checked type="checkbox">
                        <span class="text "> Nam</span>
                    </label>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="padding-left-100 no-padding-sm">
            <div class="col-sm-5">
                <div class="form-group">
                    <span class="input-icon icon-right no-padding-sm ">
                        <input name="birthPlace" type="text" class="form-control" placeholder="Nơi sinh">
                        <i class="fa fa-envelope-o circular themeprimary"></i>
                    </span>
                </div>
            </div>
            <div class="col-sm-5">
                <div class="form-group">
                    <span class="input-icon icon-right no-padding-sm ">
                        <input name="birthYear" type="text" class="form-control" placeholder="Năm sinh">
                        <i class="fa fa-envelope-o circular themeprimary"></i>
                    </span>
                </div>
            </div>
        </div>

    </div>

    <div class="form-group">
        <span class="input-icon icon-right">
            <input name="userID" type="text" class="form-control" id="passwordInput" placeholder="Số chứng minh nhân dân">
            <i class="fa fa-lock circular themeprimary"></i>
        </span>
    </div>
    <div class="form-group">
        <span class="input-icon icon-right">
            <input name="phone" type="text" class="form-control" id="confirmPasswordInput" placeholder="Số điện thoại">
            <i class="fa fa-lock circular themeprimary"></i>
        </span>
    </div>
</div>
<hr class="bordered bordered-themeprimary"/>