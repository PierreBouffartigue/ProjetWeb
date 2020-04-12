@extends('layouts.master')

@section('content')
    <div class="slider_area">
            <div class="single_slider  d-flex align-items-center slider_bg_1 black_overlay">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-12 col-md-12">
                            <div class="slider_text text-center ">
                            <div class="row mb-2">
                                    <div class="team_area">
                                        <div class="container">
                                            <div class="border_bottom">
                                                <div class="row">
                                                @foreach ($products as $product)
                                                            <div class="col-xl-4 col-lg-4 col-md-6">
                                                                <div class="single_team">
                                                                    <div class="team_thumb">
                                                                        <img src="{{ $product->image }}" alt="">
                                                                    </div>
                                                                    <div class="team_info text-center">
                                                                        <h3>{{ $product->title }}</h3>
                                                                        <p>{{ $product->subtitle }}</p>
                                                                        <div class="social_link">
                                                                            <p>{{ $product->getPrice() }}</p>
                                                                            <form action="#" method="POST">
                                                                                <a type="submit" class="btn btn-info">Ajouter au panier</a><br>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection