<?php

namespace Kernel;

class Model{

    protected static $table;

    public static function all(){
        $query = 'select * from '.self::getTable();
        return Connexion::query($query,get_called_class());
    }

    public static function find($id){
        $query = 'select * from '.self::getTable().
            'where id=:id';
        return Connexion::query($query,get_called_class(),['id'=>$id]);
    }

    public static function getTable(){
        $class = get_called_class();
        return $class::$table;
    }
}