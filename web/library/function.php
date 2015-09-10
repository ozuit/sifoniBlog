<?php

function getTotal($table)
{
	$sql = "SELECT count(*) as total FROM `{$table}`";
	
	return db_get_all($sql)[0];
}

function getData($offset, $pagesize, $table)
{
	$sql = "SELECT * FROM `{$table}` limit {$offset}, {$pagesize}";
	
	return db_get_all($sql);
}
