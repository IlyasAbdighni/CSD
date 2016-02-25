<?php

/**
 *
 */
class About extends Frontend_controller
{

    function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->data["subview"] = "about";

        $this->load->view("_main_layout", $this->data);


    }




}


 ?>
