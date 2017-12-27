<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Modules extends Model
{

	protected $table = 'modules';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
       'id',  'module_name',
    ];


    public static function getModulesByUser($id){

    	return DB::table('modules')
                    ->select('modules.id as module_id','user_product.toggle',
                            'modules.module_name')
                    ->leftJoin('user_product', 'user_product.module_id', '=', 'modules.id')
                    ->where('user_product.uid', $id )->get();
    }


}
