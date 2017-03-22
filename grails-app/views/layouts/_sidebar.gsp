<div class="page-sidebar " id="sidebar">
    <!-- Page Sidebar Header-->
    <div class="sidebar-header-wrapper">
        <input type="text" class="searchinput" />
        <i class="searchicon fa fa-search"></i>
        <div class="searchhelper">Search Reports, Charts, Emails or Notifications</div>
    </div>
    <!-- /Page Sidebar Header -->
    <!-- Sidebar Menu -->
    <ul class="nav sidebar-menu">
        <!--Dashboard-->
        <li class="active">
            <a href="${createLink(controller: 'home', action: 'dashboard')}" rel='new-tab'>
                <i class="menu-icon glyphicon glyphicon-home"></i>
                <span class="menu-text" id="main_dashboard"> Dashboard </span>
            </a>
        </li>
        <li>
            <a href="${createLink(controller: 'room', action: 'index')}" rel='new-tab'>
                <i class="menu-icon fa fa-list-alt"></i>
                <span class="menu-text"> Phòng Trọ </span>
            </a>
        </li>
        <li>
            <a href="${createLink(controller: 'renter', action: 'index')}" rel='new-tab'>
                <i class="menu-icon fa fa-user"></i>
                <span class="menu-text"> Người thuê trọ </span>
            </a>
        </li>
        <li>
            <a href="${createLink(controller: 'region', action: 'index')}" rel='new-tab'>
                <i class="menu-icon fa fa-th"></i>
                <span class="menu-text"> Dãy trọ </span>
            </a>
        </li>
        <li>
            <a href="${createLink(controller: 'region', action: 'index')}" rel='new-tab'>
                <i class="menu-icon fa fa-cog"></i>
                <span class="menu-text"> Cài đặt </span>
            </a>
        </li>
    </ul>
    <!-- /Sidebar Menu -->
</div>
<script>
    $(document).on('click', "a[rel='new-tab']", function () {
        $("#sidebar > ul").find('li.active').removeClass('active');
        $(this).parents("li").addClass('active')
    })
</script>