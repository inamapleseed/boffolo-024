<?php 
class ControllerExtensionModuleAnnouncement extends controller {
	public function index() {
		$array = array(
            'oc' => $this,
            'heading_title' => 'Announcement',
            'modulename' => 'announcement',
            'fields' => array(
                array('type' => 'textarea', 'label' => 'Announcement', 'name' => 'content', 'ckeditor' =>true),
                array('type' => 'text', 'label' => 'Type "disable" to disable', 'name' => 'disable'),
                )
        );
        $this->modulehelper->init($array);
	}
}