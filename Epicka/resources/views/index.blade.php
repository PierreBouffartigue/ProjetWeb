@extends('layouts.master')

@section('content')
    <!-- join-start -->
    <div class="slider_area">
            <div class="single_slider  d-flex align-items-center slider_bg_1 black_overlay">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-12 col-md-12">
                            <div class="slider_text text-center ">
                                <h3 class="wow fadeInDown" data-wow-duration="1s" data-wow-delay=".1s" >Bienvenue sur Pixelmon Epicka <br></h3>
								<p>Lancez vous dans une aventure scénarisée puis commencez une survie unique !</p>
                                    <a href="{{ url('/launcher') }}" class="boxed-btn3">Nous rejoindre !</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- join-end -->
	<!-- media-start  -->
    <div class="wild_photography">
        <div class="container-fluid p-0">
            <div class="row no-gutters align-items-center ">
                <div class="col-lg-6">
                    <div class="wildlife_photo">
                        <iframe width="960" height="700" src="https://www.youtube.com/embed/-VxHOXB7zH8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="section_title">
                        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
                            <h3>Informations :</h3>
							<p>Joueurs en ligne :  <span id="ponline"></span>/<span id="max"></span><br /></p>
							<p>Statut du serveur : <span class="enligne" id="online"></span><br /></p>
							<p>Ce serveur fonctionne sous  : <span class="type" id="type"></span></p>					 
						<script type="text/javascript">						 
								 var ip = "147.135.181.88";
								 var port = "25600";
								 var statut = "";
								 var PlayersMax;
								 var PlayerNow;
								 var TypeOfServer;
						 
								$.getJSON('http://api.syfaro.net/minecraft/1.3/server/status?ip='+ip+'&port='+port, function(data) {
											   
												if(data.status=="success"){												   
														statut = " en ligne ";						 
												} else {												   
													statut = "fermé";
												}
						 
												PlayersMax = data.players.max;
												PlayersNow = data.players.now;
												TypeOfServer = data.server.name;						 						 
											   
											   document.getElementById('online').textContent = statut;
											   document.getElementById('max').textContent = PlayersMax;
											   document.getElementById('ponline').textContent = PlayersNow;
											   document.getElementById('type').textContent = TypeOfServer;																	   						 					 
											});
						</script>
                        <h3>Radio :</h3><br>
                        <audio controls="" preload="auto" src="https://streaming.nationsglory.fr/NGRadio" style="width:100%; height:40px;"> </audio>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- media-end  -->
@endsection