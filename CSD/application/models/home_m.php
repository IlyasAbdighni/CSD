<?php

/**
 *
 */
class Home_m extends MY_Model
{

	protected $_table_name = "university";
    protected $_primary_key = "idUniversity";
    protected $_order_by = "idUniversity";

    public function __construct()
    {
        parent::__construct();
    }


    public function get_new_univeristy()
    {
    	$this->db->limit(6);
    	$this->db->order_by($this->_order_by, "DESC");
    	$univeristy = $this->get();
    	return $univeristy;
    }




}


 ?>
