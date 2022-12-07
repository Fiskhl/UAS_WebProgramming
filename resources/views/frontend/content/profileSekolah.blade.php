@extends('layouts.Frontend.app')

@section('title')
    Profile Sekolah
@endsection

@section('content')
    @section('about')
        <div class="container">
            @if ($profile)
                <div style="margin-top: 5%; margin-bottom:3%">
                    <img src="{{asset('storage/images/profileSekolah/' .$profile->image)}}" c  style="display:block; margin:auto; max-height: 328px; max-weidth:650px">
                </div>
                <h2 class="title-center">{{$profile->title}}</h2>
                <p class="sub-title-full-width" style="text-align: justify;">{{$profile->content}}</p>
            @else
                <img src="{{asset('Assets/Frontend/img/empty.svg')}}" class="img-responsive" style="object-fit:cover; margin-top:5% !important; display: block;
            margin: 0 auto;">
            @endif
                <h2 class="title-center">Lokasi SMK Putra Rifara</h2>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3967.1779039108465!2d106.64154521535076!3d-6.1067319615956075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6a02316e859df9%3A0x256e3a757ec8da73!2sSMK%20Putra%20Rifara!5e0!3m2!1sen!2sid!4v1669527330327!5m2!1sen!2sid" class="center" width="800" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                <br>
        </div>
        
    @endsection
    
@endsection
