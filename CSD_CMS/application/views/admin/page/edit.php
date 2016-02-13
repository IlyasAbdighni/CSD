

<section class="content-header">
    <h1>
        <?php echo empty($page->id) ? "Add a new page: " : "Edit page " . $page->title; ?>
    </h1>

</section>
<?php $this->form_validation->set_error_delimiters('<p class="bg-danger">', '</p>');?>
<?php echo validation_errors(); ?>
<?php echo form_open("", array("class" => "clearfix")); ?>

    <div class="form-group col-md-6">
        <label for="name">Template</label>
        <?php

        echo form_dropdown("template", array('page' => 'page', 'home' => 'home', 'about' => 'about', 'universities' => 'universities', 'login' => 'login', 'register' => 'register'), $this->input->post("template") ? $this->input->post("template") : $page->template, "class='form-control'");
        ?>
    </div>
    <div class="form-group col-md-6">
        <label for="name">Title</label>
        <?php
            $attr = array(
                "name" => "title",
                "class" => "form-control",
                "placeholder" => "Title",
                "value" => $page->title,
            );
            echo form_input($attr);
        ?>
    </div>
    <div class="form-group col-md-6">
        <label for="email">Slug</label>
        <?php
        $attr = array(
            "name" => "slug",
            "class" => "form-control",
            "placeholder" => "Slug",
            "value" => $page->slug,
        );
        echo form_input($attr);
        ?>
    </div>
    <div class="form-group col-md-12">
        <label for="password">Body</label>
        <?php
        $attr = array(
            "id" => "editor",
            "name" => "body",
            "class" => "form-control textarea",
            "placeholder" => "Body",
            "value" => $page->body,
        );
        echo form_textarea($attr);
        ?>
    </div>
<!--    <div class="form-group col-md-6">-->
<!--        <label for="change_page_block_status">Block status</label>-->
<!--        <select name="page_block_status" class="form-control">-->
<!--            --><?php
//                $status_normal = false;
//                $status_block = false;
//                if ($page->StatusBlockpage == 0) {
//                    $status_normal = true;
//                }
//                else {
//                    $status_block = true;
//                }
//            ?>
<!--            <option value="0" --><?php //echo set_select('page_block_status', 0, $status_normal); ?><!-- >normal</option>-->
<!--            <option value="1" --><?php //echo set_select('page_block_status', 1, $status_block); ?><!-- >block</option>-->
<!--        </select>-->
<!--    </div>-->

    <div class="text-left col-md-12">
        <?php echo form_submit("submit", "save", "class='btn btn-primary'"); ?>
        <?php echo anchor(base_url("admin/page"), "cancel", "class='btn btn-primary'"); ?>
    </div>
<?php echo form_close();?>
