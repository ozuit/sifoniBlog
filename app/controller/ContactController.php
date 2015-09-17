<?php

namespace App\Controller;

use Sifoni\Controller\Base;
use App\Model\Contact;

/**
* 
*/
class ContactController extends Base
{
	public function indexAction()
	{
		$data = array();
		if ($this->isPostRequest()) {
	        $postData = $this->getPostData();
	        $postData['status'] = 'false';
	        if (Contact::insert($postData)) {
	            $data['success'] = 'Ý kiến đóng góp của bạn đã được ghi nhận lại. Xin cảm ơn!';
	        }
	    }
		return $this->render('contact/contact.html.twig', $data);
	}
}