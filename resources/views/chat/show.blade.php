@extends('layouts.app')

@section('content')
<div class="container">
  <h1>Chat</h1>
  <div class="row">
    <div class="col-8">
      <div class="row chat" id="chat">
        <div class="wrapper-chat">
          @foreach($messages as $message)
          <div class="col-12" data-id="{{$message->id}}">
            <b>{{$message->getUserFrom()->name}}:</b> {{$message->message}}
          </div>
          @endforeach
        </div>
      </div>
      <form action="/chat/send" method="post">
        <div class="row">
          <input type="hidden" name="user_to" value="{{$user_id}}">
          {{csrf_field()}}
          <div class="col-10">
            <textarea name="message" class="w-100"></textarea>
          </div>
          <div class="col-2">
            <button type="submit" name="button" class="btn btn-primary">Send</button>
          </div>
        </div>
      </form>
      </div>
  </div>
</div>
<audio src="/sounds/credulous.mp3" id="soundMessage"></audio>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
  $(document).ready(function(){
    setInterval(function(){
      $.ajax({
        url: "/chat/getNewMessages",
        method: 'get',
        data: {
          last_id: $('.chat > div > div').last().data('id'),
          id: {{$user_id}}
        }
      }).done(function(result) {
        if(result){
            $('.chat > .wrapper-chat').append(result);
            let player = document.getElementById('soundMessage');
            player.play();
        }
      });
    }, 2000);

    let heightChat = $('#chat > div > div').height() * $('#chat > div > div').length;
    $('#chat').scrollTop(heightChat - $('#chat').height());

  });
</script>
@endsection

<!-- chat/show.blade.php -->
