<?php

class Frontend_Controller extends MY_Controller {

    function __construct()
    {
        parent::__construct();

        $this->load->model("page_m");

        $this->data["menu"] = $this->page_m->get_nested();
    }



}