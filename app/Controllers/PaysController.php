<?php

namespace app\Controllers;


class PaysController extends \Kernel\Controller
{
    public static function index(){
        $pays = \app\Models\Pays::all();
        return new \Kernel\View('pays/index.php',['pays'=>$pays]);
    }

    public function edit(){
        
    }
}