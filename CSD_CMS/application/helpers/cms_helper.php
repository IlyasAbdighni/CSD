<?php
/**
 * Created by PhpStorm.
 * User: udunig
 * Date: 2/7/16
 * Time: 8:33 PM
 */

function btn_edit($uri) {
    return anchor(base_url($uri), "<i class='glyphicon glyphicon-edit'></i>");
}

function btn_delete($uri) {
    return anchor(base_url($uri), "<i class='glyphicon glyphicon-remove-circle'></i>", array("onclick" => "return confirm('You are about to delete a record. Are you sure?')"));

}


function btn_view($uri) {
    return anchor(base_url($uri), "<i class='glyphicon glyphicon-circle-arrow-right'></i> View");

}



/**
 * Dump helper. Functions to dump variables to the screen, in a nicley formatted manner.
 * @author Joost van Veen
 * @version 1.0
 */
if (!function_exists('dump')) {
    function dump ($var, $label = 'Dump', $echo = TRUE)
    {
        // Store dump in variable
        ob_start();
        var_dump($var);
        $output = ob_get_clean();

        // Add formatting
        $output = preg_replace("/\]\=\>\n(\s+)/m", "] => ", $output);
        $output = '<pre style="background: #FFFEEF; color: #000; border: 1px dotted #000; padding: 10px; margin: 10px 0; text-align: left;">' . $label . ' => ' . $output . '</pre>';

        // Output
        if ($echo == TRUE) {
            echo $output;
        }
        else {
            return $output;
        }
    }
}


if (!function_exists('dump_exit')) {
    function dump_exit($var, $label = 'Dump', $echo = TRUE) {
        dump ($var, $label, $echo);
        exit;
    }
}


// Filter input , escape output
function e($string) {
    return htmlentities($string);
}


function get_menu ($array, $child = false) {

    $CI =& get_instance();
    $str = "";

    if(count($array)) {
        $str .= $child == false ? "<ul class='res'>" . PHP_EOL : "<ul class='dropdown-menu'>" . PHP_EOL;

        foreach($array as $item) {

            if (($item["slug"] === "/") || ($item["slug"] === "index") ||($item["slug"] === "")) {
                $item["slug"] = "";
            }

            $active = $CI->uri->segment(1) == $item["slug"] ? true : false;

            if(isset($item["children"]) && count($item["children"])) {
                $str .= "<li class='dropdown'>";
                $str .= "<a class='dropdown-toggle' data-toggle='dropdown' href='" . site_url(e($item["slug"])) .  "'>" . e($item["title"]);
                $str .= "<b class='caret'></b></a>" . PHP_EOL;
                $str .= get_menu($item["children"], true);
            }
            else {
                $str .= "<li>";
                $str .= $active ? "<a class='active" : "<a class='";
                $str .= "' href='" . site_url($item["slug"]) .  "'>" . e($item["title"]) . "</a>";

            }

            $str .= "</li>" . PHP_EOL;
        }
        $str .= "</ul>" . PHP_EOL;
    }
    return $str;
}
