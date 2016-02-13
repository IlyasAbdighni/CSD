<?php
/**
 * Created by PhpStorm.
 * User: udunig
 * Date: 2/6/16
 * Time: 9:34 AM
 */
class Test extends Frontend_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->load->model("test_m");
    }

    public function index() {
        $a = "ilyas";
        !isset($a) || $a = null;
        var_dump($a);
    }


}

