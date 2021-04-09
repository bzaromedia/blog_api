@extends('layout')
@section('content')
    <h3> From hello view</h3>
    {{ $variable }} <br/>
    {{ $blog->title }} <br/>

    @foreach($array as $arr)
        {{ $arr }}
    @endforeach
@stop
