@extends('layouts.master')

@section('content')
    <div class="slider_area">
                <div class="single_slider  d-flex align-items-center slider_bg_1 black_overlay">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-xl-12 col-md-12">
                                <div class="slider_text text-center ">
                                    <p>Vote pour le serveur et gagne des récompenses :</p>
                                    <form action="#">
                                        <div class="mt-10">
                                            <input type="text" name="Pseudo" placeholder="Pseudo"
                                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Pseudo'" required
                                                class="single-input">
                                        </div>
                                        <br><form action="#" method="POST">
                                            <a type="submit" target="_blank" class="btn btn-info">Voter</a><br>
                                        </form><br><br>
                                    <br><br><p>Une fois en jeu utilise /reward pour récupérer tes récompenses !</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection