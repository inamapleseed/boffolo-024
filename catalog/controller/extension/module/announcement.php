<?php
class ControllerExtensionModuleAnnouncement extends Controller {
	public function index() {
		// Handle custom fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'announcement';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['content'] = $Modulehelper->get_field($oc, $modulename, $language_id, 'content');
		$data['disable'] = $Modulehelper->get_field($oc, $modulename, $language_id, 'disable');

		return $this->load->view('extension/module/announcement', $data);
	}
		public function migrate() {
		// Handle custom fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'announcement';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

		$data['content'] = $Modulehelper->get_field($oc, $modulename, $language_id, 'content');
		$data['disable'] = $Modulehelper->get_field($oc, $modulename, $language_id, 'disable');

		return $data;
	}
	
}