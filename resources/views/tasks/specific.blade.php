@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Jelovnik <a class="float-right" href="{{ route('home') }}">Početna</a></div>

                <div class="card-body">
                    
                    <p>Naziv jela: <br><b>{{ $task->naziv_jela}}</b></p>
                    <p>Naziv jela na engleskom: <br><b>{{ $task->naziv_jela_na_engleskom }}</b></p>
                    <p>Opis jela: <br><i>{{ $task->opis_jela }}</i></p>
                    <p>Tip jela: <br><b>{{ $task->tip_jela}}</b></p>

                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection