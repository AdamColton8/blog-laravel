<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Post;
use App\User;

class PostController extends Controller
{
    function create(Request $request) {
      $post = new Post();
      $post->title = $request->title;
      $post->description = $request->description;
      $post->text = $request->text;
      $post->author = Auth::user()->id;
      $post->save();

      return redirect()->back();
    }

    function showPosts() {
      return view('post.list', [
        'posts' => Post::orderBy('id', 'desc')->get()
      ]);
    }

    function showPostById($id) {
      return view('post.show', [
        'post' => Post::find($id)
      ]);
    }

    function remove($id) {
      Post::find($id)->delete();
      return redirect('/');
    }

    function update(Request $request) {
      $post = Post::find($request->id);
      $post->title = $request->title;
      $post->description = $request->description;
      $post->text = $request->text;
      $post->save();
      return redirect()->route('showPost', ['id' => $request->id]);
    }

    function edit($id) {
      $post = Post::find($id);
      return view('post.edit', [
        'post' => $post
      ]);
    }

    function showPostsByUserId($id) {
      $posts = User::find($id)->posts()->get();

      return view('post.list', [
        'posts' => $posts
      ]);
    }
}
