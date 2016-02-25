<?php


/**
 *
 */
class Search extends Frontend_controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('university_m');
    }

    public function index()
    {
        $post = $this->input->post();
        if ($post) {
            $search_result = e($post["searching_word"]);
            $this->data["universities"] = $this->university_m->search($search_result);
        }

        $this->data["subview"] = "search_result";
        $this->load->view("_main_layout", $this->data);



    }








}








 ?>
