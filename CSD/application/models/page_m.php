<?php
/**
 * Created by PhpStorm.
 * User: udunig
 * Date: 2/6/16
 * Time: 8:56 AM
 */

class Page_m extends MY_Model {

    protected $_table_name = "pages";
    protected $_primary_key = "id";
    protected $_order_by = "id";
    public $rules = array(
        "title" => array(
            "field" => "title",
            "label" => "Title",
            "rules" => "trim|required|max_length[100]",
        ),
        "slug" => array(
            "field" => "slug",
            "label" => "Slug",
            "rules" => "trim|required|max_length[100]|url_title|callback__unique_slug",
        ),
        "template" => array(
            "field" => "template",
            "label" => "Template",
            "rules" => "trim",
        ),
        "order" => array(
            "field" => "order",
            "label" => "order",
            "rules" => "trim",
        ),
        "body" => array(
            "field" => "body",
            "label" => "Body",
            "rules" => "trim|required",
        ),
    );

    public function get_new() {
        $page = new stdClass();
        $page->title = "";
        $page->slug = "";
        $page->parent_id = "";
        $page->template = "page";
        $page->body = "";
        return $page;

    }


    public function get_nested (){
        $this->db->order_by($this->_order_by);
        $pages = $this->db->get("pages")->result_array();

        $array = array();
        foreach ($pages as $page) {
            if (!$page["parent_id"]) {
               $array[$page["id"]] = $page;
            }
            else {
                $array[$page["parent_id"]]["children"][] = $page;
            }

        }
        return $array;
    }


    public function get_no_parents() {
        $this->db->select("id, title");
        $this->db->where("parent_id", 0);
        $pages = parent::get();

        $array = array(0 => "No parent");
        if(count($pages)) {
            foreach($pages as $page){
                $array[$page->id] = $page->title;
            }
        }
        return $array;
    }


    public function get_with_parent($id = null, $single = false){
        $this->db->select("pages.*, p.slug as parent_slug, p.title as parent_title");
        $this->db->join("pages as p", "pages.parent_id=p.id", 'left');
        $this->db->order_by("id");
        return parent::get();
    }

    public function delete($id){
        // delete a page
        parent::delete($id);

        // Reset parent ID for its children
        $this->db->set(array("parent_id" => 0))->where("parent_id", $id)->update($this->_table_name);
    }


    public function save_order ($pages) {
        if (count($pages)) {
            foreach($pages as $order => $page) {
                if ($page["item_id"] != "") {
                    $data = array("parent_id" => (int)$page["parent_id"], "order" => $order);
                    $this->db->set($data)->where($this->_primary_key, $page["item_id"])->update($this->_table_name);
                    echo "<pre>" . $this->db->last_query() . "</pre>";
                }
            }
        }
    }


    public function get_order() {
        $orders = array();
        $this->db->select("order");
        foreach(parent::get() as $order) {
            $orders[] = $order->order;
//            array_push($orders, $order->order);
        }
        return $orders;
    }






}
