<?php

namespace Kernel;

class View{
    private $filename;
    private $params;
    public function __construct($filename,$params=[]){
        $this->filename = $filename;
        $this->params = $params;
    }

    public function display(){
        foreach ($this->params as $key => $value) {
            $$key = $value;
        }
        include('../app/Views/'.$this->filename);
    }
}