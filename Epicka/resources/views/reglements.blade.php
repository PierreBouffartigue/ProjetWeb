@extends('layouts.master')

@section('content')
    <div class="slider_area">
            <div class="single_slider  d-flex align-items-center article_1 black_overlay">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-12 col-md-12">
                            <div class="slider_text text-center ">
								<h3>Réglement du serveur :</h3>
                                @foreach($reglements as $reglement)
                                    {!! $reglement->body !!}
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection