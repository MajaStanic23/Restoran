@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">@lang('Unos novog jela') <a class="float-right" href="{{ url()->previous() }}">@lang('Povratak')</a></div>

                <div class="card-body">

                   

                    <br><br>
                    
                    <form method="post" action="{{ route('task.create') }}">
                        {{ csrf_field() }}
                        <input type="hidden" name="zaposlenici_id" value="{{ Auth::id() }}">

                        <div class="form-group">
                            <label for="naziv_jela">@lang('Naziv jela')</label>
                            <input type="text" class="form-control" id="naziv_jela" name="naziv_jela" required>
                        </div>

                        <div class="form-group">
                            <label for="naziv_jela_na_engleskom">@lang('Naziv jela na engleskom')</label>
                            <input type="text" class="form-control" id="naziv_jela_na_engleskom" name="naziv_jela_na_engleskom" required>
                        </div>

                        <div class="form-group">
                            <label for="opis_jela">@lang('Sastojci')</label>
                            <textarea class="form-control" id="opis_jela" name="opis_jela" rows="3" required></textarea>
                        </div>

                        <div class="form-group">
                            <label for="tip_jela">@lang('Tip jela')</label>
                            <select class="form-control" name="tip_jela" id="tip_jela">
                                <option value="predjelo">@lang('predjelo')</option>
                                <option value="glavno_jelo">@lang('glavno jelo')</option>
                                <option value="desert">@lang('desert')</option>
                            </select> 
                        </div>

                        <button type="submit" class="btn btn-primary">@lang('Spremi')</button>

                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
