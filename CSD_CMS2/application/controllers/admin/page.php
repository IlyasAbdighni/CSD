<?php

    class Page extends Admin_Controller {

        public function __construct()
        {
            parent::__construct();
            $this->load->model("page_m");
        }


        /**
         *
         */
        public function index() {

            // fetch all pages
            $this->data["pages"] = $this->page_m->get_with_parent();

            // load view
            $this->data["subview"] = "admin/page/index";



            $this->load->view("admin/_layout_main", $this->data);
        }


        public function order() {
            $this->data["sortable"] = true;
            $this->data["subview"] = "admin/page/order";
            $this->load->view("admin/_layout_main", $this->data);

        }


        public function order_ajax() {

            if(isset($_POST["sortable"])) {
                $this->page_m->save_order($_POST["sortable"]);
            }
            // fetch all pages
            $this->data["pages"] = $this->page_m->get_nested();


            $this->load->view("admin/page/order_ajax", $this->data);
        }



        public function edit($id = null) {


            // set a page or set a new page
            if ($id) {
                $this->data["page"] = $this->page_m->get($id);
                count($this->data["page"]) || $this->data["errors"][] = "page could not be found";
            }
            else {
                $this->data["page"] = $this->page_m->get_new();
            }


            // pages for dropdown
            $this->data["pages_no_parents"] = $this->page_m->get_no_parents();
            $this->data["orders"] = $this->page_m->get_order();

            // set up the form
            $rules = $this->page_m->rules;
            $this->form_validation->set_rules($rules);


            // process the form
            if ($this->form_validation->run() == true) {


                $data = $this->page_m->array_from_post(array("title", "slug", "body", "parent_id", "template", "order"));
                $this->page_m->save($data, $id);
                redirect(site_url("admin/page"));
            }

            $this->data["subview"] = "admin/page/edit";
            $this->load->view("admin/_layout_main", $this->data);
        }



        public function delete($id) {
            $this->page_m->delete($id);
            redirect(base_url("admin/page"));
        }



        public function _unique_slug ($str) {


            $id = $this->uri->segment(4);
            $this->db->where("slug", $this->input->post("slug"));
            $this->db->where("id !=", $id);
            $page = $this->page_m->get();

            if(count($page)) {
                $this->form_validation->set_message("_unique_slug", "%s already exists.");
                return false;
            }

            return true;
        }

    }



?>
