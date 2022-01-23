<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class PokemonController extends Controller
{
    public function login(){
        return view('login'); 
    }

    public function index(){
        $pokemon=DB::select('select * from pokemon');
        return view('pokedex',['pokemons'=>$pokemon]); 
    }

    public function read(Request $request){
        if($request->input('q')!=''){
            if ($request->input('q')=='favorito') {
                $pokemon=DB::select('select * from pokemon where favorito = 1');
            }else{
                $pokemon=DB::select('select * from pokemon where nombre like ?', ["%".$request->input('q')."%"]);
            }
        }else{
            $pokemon=DB::select('select * from pokemon');
        }
        return response()->json($pokemon);
    }

    public function updateFav(Request $request){
        try {
            DB::update('update pokemon set favorito = ? where numero_pokedex=?', [$request->input('favorito'), $request->input('numero_pokedex')]);
            return response()->json(array('resultado'=> 'OK'));
        } catch (\Throwable $th) {
            return response()->json(array('resultado'=> 'NOK: '.$th->getMessage().' | '));
        }

    }
    public function updateImage(Request $request){
        try {
            //bookcover: name del input, uploads: directorio storage/app/uploads
            $path = $request->file('img')->store('uploads');
            DB::update('update pokemon set imagen = ? where numero_pokedex=?', [$path, $request->input('numero_pokedex')]);
        
            return response()->json(array('resultado'=> 'OK'));
        } catch (\Throwable $th) {
            return response()->json(array('resultado'=> 'NOK: '.$th->getMessage().' | '));
        }
    }
}
