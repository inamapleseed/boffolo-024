<?php
class ControllerExtensionModuleAboutUs extends Controller {
	public function index() {
		// Handle custom fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'aboutus';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title' );
		$data['repeater'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'repeater' );
		$data['image'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'image' );

		return $this->load->view('extension/module/aboutus', $data);
	}
	public function migrate() {
		// Handle custom fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'aboutus';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title' );
		$data['text'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'text' );

		return $data;
	}

}