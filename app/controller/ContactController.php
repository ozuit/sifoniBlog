<?php

namespace App\Controller;

use Sifoni\Controller\Base;

/**
* 
*/
class ContactController extends Base
{
	public function indexAction()
	{
		return $this->render('contact/contact.html.twig');
	}
}