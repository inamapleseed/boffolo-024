<?php 
class ControllerExtensionModuleCustom extends controller {
	public function index() {
		$array = array(
            'oc' => $this,
            'heading_title' => 'Custom',
            'modulename' => 'custom',
            'fields' => array(

                array('type' => 'repeater', 'label' => 'Content', 'name' => 'repeater', 'fields' => array(
                    array('type' => 'image', 'label' => 'Image', 'name' => 'image'),
                    array('type' => 'text', 'label' => 'Title', 'name' => 'title'),
                    array('type' => 'textarea', 'label' => 'Text Content', 'name' => 'text', 'ckeditor' =>true),
                    )
                ),

                array('type' => 'text', 'label' => 'Title', 'name' => 'title2'),
                array('type' => 'image', 'label' => 'Background Image', 'name' => 'bgi'),
                array('type' => 'text', 'label' => 'URL', 'name' => 'url'),
            ),
        );
        $this->modulehelper->init($array);
	}
}