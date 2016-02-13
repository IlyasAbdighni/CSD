<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


	if ( ! function_exists('bootMenuItem')){
		function bootMenuItem($controller, $title, $activeClass = 'active') {
			$CI =& get_instance(); 
			//echo 'uristring[' . $CI -> uri-> uri_string() . '] controller[' . $controller . ']'; 
			$cssClass = $CI -> uri-> uri_string() === $controller ? $activeClass : '';
			return '<li class="'. $cssClass . '">' . anchor($controller, $title) . '</li>';
		}	
	}

?>