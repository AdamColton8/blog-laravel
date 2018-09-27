@extends('layouts.app')

@section('content')

<div class="container">

  @if(Auth::check() && Auth::user()->id == $post->author)
  <div class="admin-controlls">
    <a href="/post/edit/{{$post->id}}">
      <button type="button" name="button" class="btn btn-primary">Edit</button>
    </a>
    <a href="/post/remove/{{$post->id}}">
      <button type="button" name="button" class="btn btn-danger">Remove</button>
    </a>
  </div>
  @endif
  <div class="post">
    <h1>{{$post->title}}</h1>
    <div>
      <p><h3>{!!$post->text!!}</h3></p>
    </div>
  </div>
</div>
@endsection

<!-- post/show.blade.php -->
