<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Chat;

class ChatController extends Controller
{
    function show($id) {

      $messages = Chat::where([
        'user_from' => Auth::user()->id,
        'user_to' => $id
      ])->orWhere([
        'user_from' => $id,
        'user_to' => Auth::user()->id
      ])->latest()->limit(5)->get()->reverse();

      return view('chat.show', [
        'user_id' => $id,
        'messages' => $messages
      ]);
    }

    function send(Request $request) {
      $chat = new Chat();
      $chat->user_from = Auth::user()->id;
      $chat->user_to = $request->user_to;
      $chat->message = $request->message;
      $chat->save();

      return redirect()->back();
    }

    function getNewMessages(Request $request){
      $id = $request->id;
      $last_id = $request->last_id;

      $messages = Chat::
          where(function($query) use ($id, $last_id) {
              /** @var $query Illuminate\Database\Query\Builder  */
              return $query->where([
                ['user_from', '=', Auth::user()->id],
                ['user_to', '=', $id]
              ])->orWhere([
                ['user_from', '=', $id],
                ['user_to', '=', Auth::user()->id],
              ]);
          })->where('id', '>', $last_id)->latest()->limit(5)->get()->reverse();
      // dd($messages);



      return view('chat.rendermessages', [
        'messages' => $messages
      ]);
    }
}
