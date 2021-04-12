<?php
class ControllerExtensionModuleCustom4 extends Controller {
	public function index() {
		// Handle custom4 fields
		$oc = $this;
		$language_id = $this->config->get('config_language_id');
		$modulename  = 'custom4';
	    $this->load->library('modulehelper');
	    $Modulehelper = Modulehelper::get_instance($this->registry);

        $this->load->model('account/download');
        $files =  $this->model_account_download->getAllDownloads();
        $file_array = array();
        foreach ($files as $file) {
            $file_array[] = array(
                    "download_id" => $file['download_id'],
                    "name"        => $file['name'],
                    "date_added"  => $file['date_added'],
                    "description" => $file['description'],
                    "description2" => $file['description2'],
                    "category" => $file['category'],
                    "moreinfo" => $file['moreinfo'],
                    "link"        => $this->url->link('account/download/download2', 'download_id='.$file['download_id'])
            );
        }
        $data['files'] = $file_array;	    

		return $this->load->view('extension/module/custom4', $data);
	}
}