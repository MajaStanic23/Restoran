@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    
                    @if (Auth::user()->role == 'admin')
                        <a href="{{ route('administration') }}">Administracija korisnika</a>
                    @endif

                    @if (Auth::user()->role == 'zaposlenici')
                        <a href="{{ route('task.new') }}">Dodaj jelo</a>
                        <br><a href="{{ route('task.list') }}">Pregled jela i sastojaka</a>
                    @endif

                    @if (Auth::user()->role == 'gosti')
                        <a href="{{ route('gosti.list') }}">Pregledaj</a>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection