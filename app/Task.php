<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['naziv_jela', 'naziv_jela_na_engleskom', 'opis_jela', 'tip_jela', 'zaposlenici_id', 'gosti_id'];

    public function applications()
    {
        return $this->belongsToMany('App\User', 'users_tasks', 'task_id', 'user_id')->orderBy('priority')->withPivot('priority');
    }

	public function gosti()
	{
	    return $this->hasOne('App\User', 'id', 'gosti_id');
	}
}
