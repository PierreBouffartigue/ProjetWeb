<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Pixelmon Epicka</title>

    @yield('extra-script')

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- header-start -->
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-xl-3 col-lg-2">
                            <div class="logo">
                                <a href="index.html">
                                    <a href="{{ url('/') }}"><img src="img/logo.png" alt="logo"/></a>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-7">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a class="active" href="{{ url('/') }}">Accueil</a></li>
                                        <li><a href="{{ url('/admin') }}">Administration</a></li>
                                        <li><a href="{{ url('/boutique') }}">Boutique</a></li>
										<li><a href="{{ url('/vote') }}">Voter</a></li>
										<li><a href="{{ url('/launcher') }}">Launcher</a></li>
										<li><a href="{{ url('https://discordapp.com/invite/aUyDPjf') }}">Discord</a></li>
                                        <li><a href="#">Autre <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="{{ url('/reglements') }}">Réglement</a></li>
                                                <li><a href="http://pixelmonepicka.tebex.io/">Shop</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                            <div class="social_links">
                                <a class="text-muted" href="{{ route('cart.index') }}">Panier <span class="badge badge-pill badge-dark">{{ Cart::count() }}</span></a>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </header>
    <!-- header-end -->
	<!-- content-start -->
    @if (session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
    @endif
        @yield('content')
    <!-- content-end -->
    <!-- news-start  -->
    <div class="photography_skill_area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-9 col-md-9">
                    <div class="section_title text-center">
                        <h1>Nouveautés</h1><br>
                        <widgetbot
                            server="697150817165115424"
                            channel="697150817165115427"
                            width="800"
                            height="300"
                            shard="https://e.widgetbot.io"
                            ></widgetbot>
                            <script src="https://cdn.jsdelivr.net/npm/@widgetbot/html-embed"></script>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- news-end  -->
    <!-- footer start -->
    <footer class="footer">
        <div class="copy-right_text">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-7 col-md-8">
                        <p class="copy_right ">
							<p> By Groupe Epicka </p> 

                        </p>
                    </div>
                    <div class="col-xl-5 col-md-4">
                        <div class="socail_links">
                            <ul>
                                <li>
                                    <a href="https://twitter.com/EpickaPixelmon">
                                        <i class="ti-facebook"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://twitter.com/EpickaPixelmon">
                                        <i class="ti-twitter-alt"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </footer>
    <!--/ footer end  -->
    <!-- JS -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/scrollIt.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/gijgo.min.js"></script>


    <script src="js/main.js"></script>

@yield('extra-js')
</body>

</html>