<?php
class ControllerExtensionModuleCustom2 extends Controller {
	public function index() {
		// Handle custom2 fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom2';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['title'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'title' );
		$data['repeater'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'repeater' );
		// $data['text'] = $Modulehelper->get_field ( $oc, $modulename, $language_id, 'text' );

		return $this->load->view('extension/module/custom2', $data);
	}
}