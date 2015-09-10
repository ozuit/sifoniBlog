<?php

namespace App\Controller\Admin;

use Sifoni\Controller\Base;

/**
* 
*/
class UploadController extends Base
{
	public function imageAction()
	{
		// Check for errors
		if($_FILES['thumb']['error'] > 0){
		    return ('An error ocurred when uploading.');
		}

		if(!getimagesize($_FILES['thumb']['tmp_name'])){
		    return ('Please ensure you are uploading an image.');
		}

		// Check filesize
		if($_FILES['thumb']['size'] > 500000){
		    return ('File uploaded exceeds maximum upload size.');
		}

		// Check if the file exists
		if(file_exists('upload/' . $_FILES['thumb']['name'])){
		    return ('File with that name already exists.');
		}

		$upload_dir = '/uploads/img/articles/';
		$img_name = basename($_FILES['thumb']['name']);
		$uploadpath = $_SERVER['DOCUMENT_ROOT'] .'/'. $upload_dir . $img_name;
		// Upload file
		if(!move_uploaded_file($_FILES['thumb']['tmp_name'], $uploadpath)){
		    return ('Error uploading file - check destination is writeable.');
		}

		return ('File uploaded successfully.');

	}
}