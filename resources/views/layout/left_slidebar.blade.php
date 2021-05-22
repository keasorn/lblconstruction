<section>
    <!-- Left Sidebar -->
    <aside id="leftsidebar" class="sidebar">
        <!-- User Info -->
        <div class="user-info">
            <div class="image">
                <img src="/images/user.png" width="48" height="48" alt="User"/>
            </div>
            <div class="info-container">
                <div class="name" data-toggle="dropdown" aria-haspopup="true"
                     aria-expanded="false">{{Auth::user()->name}}</div>
                <div class="email">{{Auth::user()->email}}</div>
                <div class="btn-group user-helper-dropdown">
                    <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                    <ul class="dropdown-menu pull-right">
                        <li><a href="/sign-out.html"><i class="material-icons">input</i>Sign Out</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- #User Info -->
        <!-- Menu -->
        <div class="menu">
            <ul class="list">
                <li class="{{ (request()->is('*dashboard*')) ? 'active' : '' }}">
                    <a href="/admin/dashboard">
                        <i class="material-icons">home</i>
                        <span>Home</span>
                    </a>
                </li>

                <li class="{{ (request()->is(['*admin*'])) ? 'active' : '' }}">
                    <a href="#none" class="menu-toggle">
                        <i class="material-icons">widgets</i>
                        <span>Widgets</span>
                    </a>
                    <ul class="ml-menu">
                        <li class="{{ (request()->is('*header*')) ? 'active' : '' }}">
                            <a href="/admin/header">Heading Section</a>
                        </li>
                        <li class="{{ (request()->is('*company_profile*')) ? 'active' : '' }}">
                            <a href="/admin/company_profile">Company Profile Section</a>
                        </li>
                        <li class="{{ (request()->is('*about_us*')) ? 'active' : '' }}">
                            <a href="/admin/about_us">About Us Section</a>
                        </li>
                        <li class="{{ (request()->is('*team*')) ? 'active' : '' }}">
                            <a href="/admin/team">Team Section</a>
                        </li>
{{--                        <li class="{{ (request()->is('*design_build*')) ? 'active' : '' }}">--}}
{{--                            <a href="/admin/design_build">Design and Build Section</a>--}}
{{--                        </li>--}}
                        <li class="{{ (request()->is('*recommend*')) ? 'active' : '' }}">
                            <a href="/admin/recommend">Recommend Company Section</a>
                        </li>
                    </ul>
                </li>
                <li class="{{ (request()->is(['*admin*'])) ? 'active' : '' }}">
                    <a href="#none" class="menu-toggle">
                        <i class="material-icons">settings</i>
                        <span>Setting</span>
                    </a>
                    <ul class="ml-menu">
                        <li class="{{ (request()->is('*recommend*')) ? 'active' : '' }}">
                            <a href="/admin/web_label" class="menu-toggle">
                                <i class="material-icons">title</i>
                                <span>Website Info/label</span>
                            </a>
                        </li>
                        <li>
                            <a href="#none" class="menu-toggle">
                                <i class="material-icons">people</i>
                                <span>User</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>

            </ul>
        </div>
        <!-- #Menu -->
    </aside>
    <!-- #END# Left Sidebar -->

</section>