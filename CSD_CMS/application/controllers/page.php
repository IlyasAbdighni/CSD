<?php
/**
 * Created by PhpStorm.
 * User: udunig
 * Date: 2/6/16
 * Time: 8:58 AM
 */

class Page extends Frontend_Controller {

    public function __construct()
    {
        parent::__construct();
        //$this->load->view("page_m");
    }

    public function index() {

        // Fetch page data
        $this->data["page"] = $this->page_m->get_by(array("slug" => (string)$this->uri->segment(1)),true);

//        count($this->data["page"]) || show_404(current_url());


        $method = "_" . $this->data["page"]->template;

        if (method_exists($this, $method)) {
            $this->$method();
        }
        else {
            log_message("error", "Could not load template" . $method . "in file" . __FILE__ . "at line" . __LINE__);
            show_error("Could not load template" . $method);
        }

        $this->data["subview"] = $this->data["page"]->template;
        $this->load->view("_main_layout", $this->data);


    }


    private function _page() {
        dump("Welcom form the page template");
    }


    private function _home() {

        $this->load->model("home_m");
        $this->home_m->get_new_records();

    }


    private function _universities() {

        $this->load->model("home_m");
        $this->home_m->get_new_records();


    }


    private function _about() {
        dump("Welcom form the about template");
    }


    private function _login() {
        dump("Welcom form the login template");
    }


    private function _register() {
        dump("Welcom form the register template");
    }



}
