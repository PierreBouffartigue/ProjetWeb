
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-xl-3 col-lg-2">
                            <div class="logo">
                                <a href="index.html">
                                    <img src="img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-7">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a class="active" href="{{ url('/') }}">Accueil</a></li>
                                        <li><a href="{{ url('/connexion') }}">Connexion</a></li>
                                        <li><a href="{{ url('/boutique') }}">Boutique</a></li>
										<li><a href="{{ url('/vote') }}">Voter</a></li>
										<li><a href="{{ url('/launcher') }}">Launcher</a></li>
										<li><a href="{{ url('https://discordapp.com/invite/aUyDPjf') }}">Discord</a></li>
                                        <li><a href="#">Règles <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="{{ url('/reglements') }}">Réglement</a></li>
                                                <li><a href="{{ url('/CGV') }}">CGV</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
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
@endsection