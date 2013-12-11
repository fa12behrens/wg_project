<?php
/**
 * Created by PhpStorm.
 * User: T.Behrens
 * Date: 11.12.13
 * Time: 09:04
 */

class html
{

	/**
	 * @var HEREDOC
	 */
	public $head = <<<HEREDOC
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="/wg_project/data/library/Bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/javascript" href="/wg_project/data/library/Bootstrap/dist/js/bootstrap.min.js">
	<link rel="stylesheet" type="text/css" href="/wg_project/data/css/main.css">
	<title>WG Manager</title>
</head>
<body>
HEREDOC;

	/**
	 * @var HEREDOC
	 */
	public $foot = <<<HEREDOC
</body>
</html>
HEREDOC;

	/**
	 * @var HEREDOC
	 */
	public $div;

	/**
	 * @var HEREDOC
	 */
	public $div_end = <<<HEREDOC
</div>
HEREDOC;

	/**
	 * @return \HEREDOC
	 */
	public function getHead()
	{
		return $this->head;
	}

	/**
	 * @return \HEREDOC
	 */
	public function getFoot()
	{
		return $this->foot;
	}

	/**
	 * @param HEREDOC
	 */
	public function setDiv($class, $id)
	{
		$this->div = <<<HEREDOC
<div class"{$class}" id"{$id}">
HEREDOC;
	}

	/**
	 * @return \HEREDOC
	 */
	public function getDiv()
	{
		return $this->div;
	}

	/**
	 * @return \HEREDOC
	 */
	public function getDivEnd()
	{
		return $this->div_end;
	}


}