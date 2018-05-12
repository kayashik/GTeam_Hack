@extends('layout.default')

@section('title', 'Login')

@section('content')
        <div class="login-container bg-white">
            <img src="{{asset('img/DS2017_TP09_color@4x.png')}}" class="login-img" alt="">

            <div class="form-login">
            <form action="{{ route('login') }}" id="form-login"  class="p-t-15 enter-submit" method="post">
                @if(session()->has('errors'))
                    <div class="alert alert-danger" role="alert">
                        <button class="close" data-dismiss="alert"></button>
                        {{ session('errors')->first() }}
                    </div>
                @endif
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="form-group row">
                        <label for="email" class="col-sm-2 col-form-label">Username</label>
                        <div class="col-sm-10">
                        <input style="font-size: 15px;" id='email' type="email" name="email" class="form-control" required />
                        </div>
                    </div>
                    <div class="form-group form-group-default row">
                        <label for="password" class="col-sm-2 col-form-label">Password</label>
                        <div class="col-sm-10">
                            <input style="font-size: 15px;" type="password" id='password' class="form-control" name="password" required />
                        </div>
                    </div>

                    <button type="submit" style="font-size: 15px;" class="btn btn-success btn-lg m-r-5">Login</button>
                    <a href="{{ route('welcome') }}" style="font-size: 15px;" class="btn btn-danger btn-lg">Exit</a>
                </form>
        </div>
            </div>


    <div class="clearfix"></div>

@endsection
