<?php

function Ext_SyntaxHighlighter_All($id, $options,  $dataIn, $colInfo )
{
	$source = Extension::reportSourceCode( $dataIn[0][0] );

	if ( $source ) {
		echo '<div style="text-align: left">';
		echo '<pre class="brush: sql">' . $source . '</pre>';
		echo '</div>';
	}
	else {
		echo '<div>No source code available</div>';
	}
}

