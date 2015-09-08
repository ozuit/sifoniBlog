<?php

namespace App\Model;


use Sifoni\Model\Base;

class Article extends Base {
	protected $table = 'articles';
	protected $primaryKey = 'id';
}