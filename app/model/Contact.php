<?php

namespace App\Model;

use Sifoni\Model\Base;

/**
* 
*/
class Contact extends Base
{
	protected $table = 'contact';
	protected $primaryKey = 'id';
	public $timestamps = false;
}