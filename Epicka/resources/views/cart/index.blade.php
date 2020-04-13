@extends('layouts.master')

@section('content')
    <div class="col-md-12">
    </div>
    @if (Cart::count() > 0)
    <br><br><br><br><div class="px-4 px-lg-0">
        <div class="pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
                        <!-- Shopping cart table -->
                        <div class="table-responsive">
                            <table class="table">
                            <thead>
                                <tr>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="p-2 px-3 text-uppercase">Produit</div>
                                </th>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="py-2 text-uppercase">Prix</div>
                                </th>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="py-2 text-uppercase">Quantité</div>
                                </th>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="py-2 text-uppercase">Supprimer</div>
                                </th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach (Cart::content() as $product)
                                <tr>
                                    <th scope="row" class="border-0">
                                        <div class="p-2">
                                            <img src="{{ $product->model->image }}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h5 class="mb-0"> <a href="{{ route('products.boutique', ['slug' => $product->model->slug]) }}" class="text-dark d-inline-block align-middle">{!! $product->model->title !!}</a></h5><span class="text-muted font-weight-normal font-italic d-block"></span>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="border-0 align-middle"><strong>{{ $product->model->getPrice() }}</strong></td>
                                    <td class="border-0 align-middle"><strong>1</strong></td>
                                    <td class="border-0 align-middle">
                                        <form action="{{ route('cart.destroy', $product->rowId) }}" method="POST">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                                        </form>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                            </table>
                        </div>
                        <!-- End -->
                    </div>
                </div>
                <div class="row py-5 p-4 bg-white rounded shadow-sm">
                        <div class="col-lg-6">
                        <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Prix total </div>
                        <div class="p-4">
                            <p class="font-italic mb-4">Prix total des articles du panier</p>
                            <ul class="list-unstyled mb-4">
                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
                                <h5 class="font-weight-bold">{{ getPrice(Cart::total()) }}</h5>
                            </li>
                            </ul><a href="{{ route('checkout.index') }}" class="genric-btn success py-2 circle">Effectuer le paiement</a>
                        </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
    @else
        <div class="col-md-12">
            <p>Votre panier est vide.</p>
        </div>
    @endif
@endsection