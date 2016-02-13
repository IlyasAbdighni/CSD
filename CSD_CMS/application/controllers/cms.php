<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CMS extends Frontend_Controller {


    /**
     * this is a test
     */
    public function index() {

        var_dump(APPPATH);
        $this->load->view("cms");
    }


    
}

?>