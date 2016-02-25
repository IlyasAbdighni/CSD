<?php
/**
 * Created by PhpStorm.
 * User: udunig
 * Date: 2/6/16
 * Time: 8:58 AM
 */

class Tutorial extends Frontend_Controller {

    public function __construct()
    {
        parent::__construct();
    }

    public function index() {

        
        $this->data["subview"] = "tutorial/index";
        $this->load->view("_main_layout", $this->data);


    }



    public function web() {

        
        $this->data["subview"] = "tutorial/web";
        $this->load->view("_main_layout", $this->data);


    }



    public function mobile() {

        
        $this->data["subview"] = "tutorial/mobile";
        $this->load->view("_main_layout", $this->data);


    }


    

}
