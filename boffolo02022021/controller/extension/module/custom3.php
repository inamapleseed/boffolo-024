<?php 
class ControllerExtensionModuleCustom3 extends controller {
	public function index() {
		$array = array(
            'oc' => $this,
            'heading_title' => 'Custom 3',
            'modulename' => 'custom3',
            'fields' => array(

                array('type' => 'repeater', 'label' => 'Content', 'name' => 'repeater', 'fields' => array(
                    array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                    array('type' => 'textarea', 'label' => 'Text Content', 'name' => 'text', 'ckeditor' =>true),
                    array('type' => 'image', 'label' => 'Image', 'name' => 'image'),
                )
            )),
        );
        $this->modulehelper->init($array);
	}
}