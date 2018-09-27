@extends('layouts.app')

@section('content')
<div class="container">
  <h1>User List</h1>
	  <table class="table">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Name</th>
	      <th scope="col">Email</th>
	      <th scope="col">Actions</th>
	    </tr>
	  </thead>
	  <tbody>
	  	@foreach($users as $user)
	    <tr>
	      <th scope="row">{{$user->id}}</th>
	      <td>{{$user->name}}</td>
	      <td>{{$user->email}}</td>
	      <td>
	      	<a href="/user/posts/{{$user->id}}" class="btn btn-light"><i class="fas fa-list-ul"></i> ({{$user->posts()->count()}}) </a>
	      	<a href="/user/chat/{{$user->id}}" class="btn btn-light"><i class="fas fa-comments"></i></a>
	      </td>
	    </tr>
	    @endforeach
	  </tbody>
	</table>
</div>
@endsection

<!-- user/list.blade.php -->