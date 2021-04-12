<?php
class ControllerExtensionModuleCustom extends Controller {
	public function index() {
		// Handle custom fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['repeater'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'repeater' );
		$data['title2'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title2' );
		$data['bgi'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'bgi' );
		$data['url'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'url' );

		return $this->load->view('extension/module/custom', $data);
	}
	public function migrate() {
		// Handle custom fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'Custom';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title' );
		$data['text'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'text' );

		return $data;
	}

}