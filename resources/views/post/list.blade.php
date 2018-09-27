@extends('layouts.app')

@section('content')
<div class="container">
  <h1>List</h1>
  @foreach($posts as $post)
  <div class="alert alert-secondary" role="alert">
    <h2><a href="/post/{{$post->id}}">{{$post->title}}</a></h2>
    <p><h2>{!! $post->description !!}</h2></p>
  </div>
  @endforeach
</div>
@endsection

<!-- list.blade.php -->
