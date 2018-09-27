  @foreach($messages as $message)
  <div class="col-12" data-id="{{$message->id}}">
    <b>{{$message->getUserFrom()->name}}:</b> {{$message->message}}
  </div>
  @endforeach
