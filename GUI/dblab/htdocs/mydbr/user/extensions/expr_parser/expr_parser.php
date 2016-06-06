<?php
require_once('/../file_parser/new3.php');
require_once('/../file_parser/ignoreme_db_connection.php');

function onParseExpr($dataRow){
	parse_expression($dataRow[0]);
}

function parse_expression($expression){

	$con = connectToDB();
	mysqli_report(MYSQLI_REPORT_ALL);
	$outExprId = createNewExpression($con, $expression);		
	$words = splitToToWords($expression);
	addWordsToExpression($con, $words, $outExprId);	
	
	relesaaeDB($con);
}


function addWordsToExpression($con, $words, $inExprId){

	$outWord = '';
	$outWordIndex = 0;
	$outIsReal = 1;	
	$outExprId = $inExprId;
	
	if ($stmt = mysqli_prepare($con, "call concordancedb.sp_add_expression_word(?, ?, ?, ?)")){			
		mysqli_stmt_bind_param($stmt, "siii",$outWord, $outExprId, $outWordIndex, $outIsReal);		
		foreach($words as $word){
			if(trim($word) != "") {
				$outWord = trim($word);			
				$outWordIndex++;
				$outIsReal = isReal($outWord);
				mysqli_stmt_execute($stmt);					
			}
		}
		releaseStatement($stmt);
	}
	else {
		mysqli_close($con);		
		throw new Exception("Problem with prepare Add Expr Word stat");
	}
}

function createNewExpression($con, $expression){
	$outExprId = -1;
	if ($stmt = mysqli_prepare($con, "call concordancedb.sp_add_expression(?)")){	
		mysqli_stmt_bind_param($stmt, "s",$expression);
		mysqli_stmt_execute($stmt);		
		mysqli_stmt_bind_result($stmt, $outExprId);
		mysqli_stmt_fetch($stmt);		
		releaseStatement($stmt);		
	}
	else {				
		mysqli_close($con);		
		throw new Exception("Problem with prepare Add Expr stat");
	}
	return $outExprId;
}

?>