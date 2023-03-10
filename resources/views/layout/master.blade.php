<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    
    <link rel="stylesheet" href="{{ asset('public/assets/css/main/app.css') }}">
    
    <link rel="shortcut icon" href="{{ asset('public/assets/images/logo/favicon.svg') }}" type="image/x-icon">
    <link rel="shortcut icon" href="{{ asset('public/assets/images/logo/favicon.png') }}" type="image/png">
    <link rel="stylesheet" href="{{ asset('public/assets/css/main/app-dark.css') }}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/main/app.css') }}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/shared/iconly.css') }}">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="{{ asset('public/font/fontawesome-free-6.2.0-web/css/all.min.css') }}">
</head>
<style>
    body::-webkit-scrollbar{
        width: 10px;
    }

    body::-webkit-scrollbar-thumb{
        background-color: #435ebe;
        border-radius: 100rem;
    }
    body::-webkit-scrollbar-track{
        background-color: #cccccc;
        border-radius: 100rem;
    }
</style>

<body>
    <div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
    <div class="sidebar-header position-relative">
        <div class="d-flex justify-content-between align-items-center">
            <div class="logo">
                <a href="{{ route('home') }}"><img src="{{ asset('public/assets/images/logo/logo.svg') }}" alt="Logo" srcset=""></a>
            </div>
            <div class="theme-toggle d-flex gap-2  align-items-center mt-2">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" class="iconify iconify--system-uicons" width="20" height="20" preserveAspectRatio="xMidYMid meet" viewBox="0 0 21 21"><g fill="none" fill-rule="evenodd" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"><path d="M10.5 14.5c2.219 0 4-1.763 4-3.982a4.003 4.003 0 0 0-4-4.018c-2.219 0-4 1.781-4 4c0 2.219 1.781 4 4 4zM4.136 4.136L5.55 5.55m9.9 9.9l1.414 1.414M1.5 10.5h2m14 0h2M4.135 16.863L5.55 15.45m9.899-9.9l1.414-1.415M10.5 19.5v-2m0-14v-2" opacity=".3"></path><g transform="translate(-210 -1)"><path d="M220.5 2.5v2m6.5.5l-1.5 1.5"></path><circle cx="220.5" cy="11.5" r="4"></circle><path d="m214 5l1.5 1.5m5 14v-2m6.5-.5l-1.5-1.5M214 18l1.5-1.5m-4-5h2m14 0h2"></path></g></g></svg>
                <div class="form-check form-switch fs-6">
                    <input class="form-check-input  me-0" type="checkbox" id="toggle-dark" >
                    <label class="form-check-label" ></label>
                </div>
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" class="iconify iconify--mdi" width="20" height="20" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="m17.75 4.09l-2.53 1.94l.91 3.06l-2.63-1.81l-2.63 1.81l.91-3.06l-2.53-1.94L12.44 4l1.06-3l1.06 3l3.19.09m3.5 6.91l-1.64 1.25l.59 1.98l-1.7-1.17l-1.7 1.17l.59-1.98L15.75 11l2.06-.05L18.5 9l.69 1.95l2.06.05m-2.28 4.95c.83-.08 1.72 1.1 1.19 1.85c-.32.45-.66.87-1.08 1.27C15.17 23 8.84 23 4.94 19.07c-3.91-3.9-3.91-10.24 0-14.14c.4-.4.82-.76 1.27-1.08c.75-.53 1.93.36 1.85 1.19c-.27 2.86.69 5.83 2.89 8.02a9.96 9.96 0 0 0 8.02 2.89m-1.64 2.02a12.08 12.08 0 0 1-7.8-3.47c-2.17-2.19-3.33-5-3.49-7.82c-2.81 3.14-2.7 7.96.31 10.98c3.02 3.01 7.84 3.12 10.98.31Z"></path></svg>
            </div>
            <div class="sidebar-toggler  x">
                <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
            </div>
        </div>
    </div>
    <div class="sidebar-menu">
        <ul class="menu">
            <li class="sidebar-title">Menu</li>
            @if (Auth::check() && Auth::user()->typeuser == 'teacher')
                    <li
                    class="sidebar-item has-sub {{ request()->is('admin/sinhvien/create') || request()->is('admin/sinhvien') ? 'active' : '' }} ">
                    <a href="#" class='sidebar-link'>
                        <i class="bi bi-stack"></i>
                        <span>Sinh vi??n</span>
                    </a>
                    <ul class="submenu {{ request()->is('admin/sinhvien/create') || request()->is('admin/sinhvien') ? 'active' : '' }} ">
                        <li class="submenu-item {{ request()->is('admin/sinhvien/create') ? 'active' : '' }}">
                            <a href="{{ route('sinhvien.create') }}">Th??m</a>
                        </li>
                        <li class="submenu-item {{ request()->is('admin/sinhvien') ? 'active' : '' }} ">
                            <a href="{{ route('sinhvien.index') }}">Danh s??ch</a>
                        </li>
                        
                    </ul>
                </li>
                
                <li
                    class="sidebar-item  has-sub {{ request()->is('admin/diem/create') || request()->is('admin/diem') ? 'active' : '' }}">
                    <a href="" class='sidebar-link'>
                        <i class="bi bi-collection-fill"></i>
                        <span>??i???m</span>
                    </a>
                    <ul class="submenu {{ request()->is('admin/diem/create') || request()->is('admin/diem') ? 'active' : '' }}">
                        <li class="submenu-item {{ request()->is('admin/diem/create') ? 'active' : '' }}">
                            <a href="{{ route('diem.create') }}">Th??m</a>
                        </li>
                        <li class="submenu-item {{ request()->is('admin/diem') ? 'active' : '' }}">
                            <a href="{{ route('diem.index') }}">Danh s??ch</a>
                        </li>
                        
                    </ul>
                </li>          
            @endif
            
            @if (Auth::check() && Auth::user()->typeuser == 'admin')
                <li
                    class="sidebar-item {{ request()->is('admin/home') ? 'active' : '' }}">
                    <a href="{{ route('home') }}" class='sidebar-link'>
                        <i class="bi bi-grid-fill"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
                <li
                    class="sidebar-item has-sub {{ request()->is('admin/sinhvien/create') || request()->is('admin/sinhvien') ? 'active' : '' }} ">
                    <a href="#" class='sidebar-link'>
                        <i class="bi bi-stack"></i>
                        <span>Sinh vi??n</span>
                    </a>
                    <ul class="submenu {{ request()->is('admin/sinhvien/create') || request()->is('admin/sinhvien') ? 'active' : '' }} ">
                        <li class="submenu-item {{ request()->is('admin/sinhvien/create') ? 'active' : '' }}">
                            <a href="{{ route('sinhvien.create') }}">Th??m</a>
                        </li>
                        <li class="submenu-item {{ request()->is('admin/sinhvien') ? 'active' : '' }} ">
                            <a href="{{ route('sinhvien.index') }}">Danh s??ch</a>
                        </li>
                        
                    </ul>
                </li>
                
                <li
                    class="sidebar-item  has-sub {{ request()->is('admin/diem/create') || request()->is('admin/diem') ? 'active' : '' }}">
                    <a href="" class='sidebar-link'>
                        <i class="bi bi-collection-fill"></i>
                        <span>??i???m</span>
                    </a>
                    <ul class="submenu {{ request()->is('admin/diem/create') || request()->is('admin/diem') ? 'active' : '' }}">
                        <li class="submenu-item {{ request()->is('admin/diem/create') ? 'active' : '' }}">
                            <a href="{{ route('diem.create') }}">Th??m</a>
                        </li>
                        <li class="submenu-item {{ request()->is('admin/diem') ? 'active' : '' }}">
                            <a href="{{ route('diem.index') }}">Danh s??ch</a>
                        </li>
                        
                    </ul>
                </li>
                
                <li
                    class="sidebar-item  has-sub {{ request()->is('admin/monhoc/create') || request()->is('admin/monhoc') ? 'active' : '' }}">
                    <a href="" class='sidebar-link'>
                        <i class="bi bi-grid-1x2-fill"></i>
                        <span>M??n h???c</span>
                    </a>
                    <ul class="submenu {{ request()->is('admin/monhoc/create') || request()->is('admin/monhoc') ? 'active' : '' }}">
                        <li class="submenu-item {{ request()->is('admin/monhoc/create') ? 'active' : '' }}">
                            <a href="{{ route('monhoc.create') }}">Th??m</a>
                        </li>
                        <li class="submenu-item {{ request()->is('admin/monhoc') ? 'active' : '' }}">
                            <a href="{{ route('monhoc.index') }}">Danh s??ch</a>
                        </li>
                        
                    </ul>
                </li>
                <li
                    class="sidebar-item  has-sub {{ request()->is('admin/khoa/create') || request()->is('admin/khoa') ? 'active' : '' }}">
                    <a href="" class='sidebar-link'>
                        <i class="bi bi-grid-1x2-fill"></i>
                        <span>Khoa</span>
                    </a>
                    <ul class="submenu {{ request()->is('admin/khoa/create') || request()->is('admin/khoa') ? 'active' : '' }}">
                        <li class="submenu-item {{ request()->is('admin/khoa/create') ? 'active' : '' }} ">
                            <a href="{{ route('khoa.create') }}">Th??m</a>
                        </li>
                        <li class="submenu-item {{ request()->is('admin/khoa') ? 'active' : '' }}">
                            <a href="{{ route('khoa.index') }}">Danh s??ch</a>
                        </li>
                        
                    </ul>
                </li>

                <li
                    class="sidebar-item  has-sub {{ request()->is('admin/lop/create') || request()->is('admin/lop') ? 'active' : '' }}">
                    <a href="" class='sidebar-link'>
                        <i class="bi bi-grid-1x2-fill"></i>
                        <span>L???p</span>
                    </a>
                    <ul class="submenu {{ request()->is('admin/lop/create') || request()->is('admin/lop') ? 'active' : '' }}">
                        <li class="submenu-item {{ request()->is('admin/lop/create') ? 'active' : '' }} ">
                            <a href="{{ route('lop.create') }}">Th??m</a>
                        </li>
                        <li class="submenu-item {{ request()->is('admin/lop') ? 'active' : '' }}">
                            <a href="{{ route('lop.index') }}">Danh s??ch</a>
                        </li>
                        
                    </ul>
                </li>

                <li
                    class="sidebar-item  has-sub {{ request()->is('admin/giangvien/create') || request()->is('admin/giangvien') ? 'active' : '' }}">
                    <a href="" class='sidebar-link'>
                        <i class="bi bi-grid-1x2-fill"></i>
                        <span>Gi???ng vi??n</span>
                    </a>
                    <ul class="submenu {{ request()->is('admin/giangvien/create') || request()->is('admin/giangvien') ? 'active' : '' }}">
                        <li class="submenu-item {{ request()->is('admin/giangvien/create') ? 'active' : '' }} ">
                            <a href="{{ route('giangvien.create') }}">Th??m</a>
                        </li>
                        <li class="submenu-item {{ request()->is('admin/giangvien') ? 'active' : '' }}">
                            <a href="{{ route('giangvien.index') }}">Danh s??ch</a>
                        </li>
                        
                    </ul>
                </li>
                <li
                    class="sidebar-item  has-sub {{ request()->is('admin/user/create') || request()->is('admin/user') ? 'active' : '' }}">
                    <a href="" class='sidebar-link'>
                        <i class="bi bi-grid-1x2-fill"></i>
                        <span>T???i kho???n</span>
                    </a>
                    <ul class="submenu {{ request()->is('admin/user/create') || request()->is('admin/user') ? 'active' : '' }}">
                        <li class="submenu-item {{ request()->is('admin/user/create') ? 'active' : '' }} ">
                            <a href="{{ route('user.create') }}">Th??m t??i kho???n</a>
                        </li>
                    

                        <li class="submenu-item {{ request()->is('admin/user') ? 'active' : '' }}">
                            <a href="{{ route('user.index') }}">Danh s??ch</a>
                        </li>
                        
                    </ul>
                </li>
            @endif
            
            
            
        </ul>
    </div>
</div>
        </div>
        <div id="main" class='layout-navbar'>
            <header class='mb-3'>
                <nav class="navbar navbar-expand navbar-light navbar-top">
                    <div class="container-fluid">
                        <a href="#" class="burger-btn d-block">
                            <i class="bi bi-justify fs-3"></i>
                        </a>

                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mb-lg-0">
                                
                               
                            </ul>
                            <div class="dropdown">
                                <a href="#" data-bs-toggle="dropdown" aria-expanded="false">
                                    @if (Auth::check() && Auth::user()->typeuser == 'admin')
                                        <div class="user-menu d-flex">
                                            <div class="user-name text-end me-3">
                                                <h6 class="mb-0 text-gray-600">{{ Auth::user()->name }}</h6>
                                                
                                            
                                                    <p class="mb-0 text-sm text-gray-600">Qu???n tr???</p>
                                                
                                            </div>
                                            <div class="user-img d-flex align-items-center">
                                                <div class="avatar avatar-md">
                                                    <img src="{{ asset('public/assets/images/faces/1.jpg') }}">
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                    @if (Auth::check() && Auth::user()->typeuser == 'teacher')
                                        <div class="user-menu d-flex">
                                            <div class="user-name text-end me-3">
                                                <h6 class="mb-0 text-gray-600">{{ Auth::user()->name }}</h6>
                                                
                                            
                                                    <p class="mb-0 text-sm text-gray-600">Gi???ng vi??n</p>
                                                
                                            </div>
                                            <div class="user-img d-flex align-items-center">
                                                <div class="avatar avatar-md">
                                                    <img src="{{ asset('public/assets/images/faces/1.jpg') }}">
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                    @if (Auth::check() && Auth::user()->typeuser == 'student')
                                        <div class="user-menu d-flex">
                                            <div class="user-name text-end me-3">
                                                <h6 class="mb-0 text-gray-600">{{ Auth::user()->name }}</h6>
                                                
                                            
                                                    <p class="mb-0 text-sm text-gray-600">Sinh vi??n</p>
                                                
                                            </div>
                                            <div class="user-img d-flex align-items-center">
                                                <div class="avatar avatar-md">
                                                    <img src="{{ asset('public/assets/images/faces/4.jpg') }}">
                                                </div>
                                            </div>
                                        </div>
                                    @endif

                                </a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton" style="min-width: 11rem;">
                                    <li>
                                        <h6 class="dropdown-header">Hello, {{ Auth::user()->name }}!</h6>
                                    </li>
                                   
                                    
                                    <li><a class="dropdown-item" href="{{ route('logout') }}"><i
                                                class="icon-mid bi bi-box-arrow-left me-2"></i> Logout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </header>
            <div id="main-content">
                @yield('content')
                
                <footer>
                    <div class="footer clearfix mb-0 text-muted">
                        <div class="float-start">
                            <p>2021 &copy; Mazer</p>
                        </div>
                        
                    </div>
                </footer>
            </div>
        </div>
    </div>
    <script src="{{ asset('public/assets/js/bootstrap.js') }}"></script>
    <script src="{{ asset('public/assets/js/app.js') }}"></script>
    <script src="{{ asset('public/assets/extensions/apexcharts/apexcharts.min.js') }}"></script>
    <script src="{{ asset('public/assets/js/pages/dashboard.js') }}"></script>
    
</body>

</html>