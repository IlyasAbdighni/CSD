<?php
/**
 * Created by PhpStorm.
 * User: udunig
 * Date: 2/9/16
 * Time: 8:35 PM
 */


defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Parent_id_to_pages extends CI_Migration {

    public function up()
    {
        $fields = array(
            'parent_id' => array(
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => TRUE,
                'default' => 0
            ),
        );
        $this->dbforge->add_column('pages', $fields);
    }

    public function down()
    {
        $this->dbforge->drop_table('pages', 'parent_id');
    }
}