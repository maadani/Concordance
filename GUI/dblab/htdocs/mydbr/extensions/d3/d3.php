<?php
/*
    Copyright mydbr.com 2007-2015 http://www.mydbr.com
    You are free to modify this file
*/

class Ext_d3Sankey extends Ext_d3js {
    public $nodes_cache = array();
    public $nodes = array();
    public $links = array();
    
    
    function __construct($id, $options,  $dataIn, $colInfo)
    {
        $this->id = $id;
        $this->options = $options;  
        $this->dataIn = $dataIn;
        $this->colInfo = $colInfo;
    }
    
    function node_add($node_id, $node_data) {
        if (($id = array_search($node_id, $this->nodes_cache))===false) {
            $this->nodes[] = array('name' => $node_data, 'id' => $node_id);
            $this->nodes_cache[] = $node_id;
            $id = sizeof($this->nodes)-1;
        }
        return $id;
    }
    
    function node_get()
    {
        return $this->nodes;
    }

    function link_add( $source, $target, $value, $url) {
        $this->links[] = array('source' => $source, 'target' => $target, 'value' => $value, 'url' => $url);
        return sizeof($this->links)-1;
    }
    
    function link_get()
    {
        return $this->links;
    }    
    
    function create()
    {
        $title = isset($this->options['dbr.d3']['title']) ? $this->options['dbr.d3']['title'] : '';
        $width = isset($this->options['dbr.d3']['x']) ? $this->options['dbr.d3']['x'] : '860';
        $height = isset($this->options['dbr.d3']['y']) ? $this->options['dbr.d3']['y'] : '400';

        $obj_id = 'chart'.$this->id;
    	/* This will add a drill menu in cases where multiple linked reports need a menu */

        $number_format = isset($this->options['dbr.d3.sankey_format']['number']) ? $this->options['dbr.d3.sankey_format']['number'] : ',.d';
        $number_suffix = isset($this->options['dbr.d3.sankey_format']['suffix']) ? $this->options['dbr.d3.sankey_format']['suffix'] : '';
        $height = isset($this->options['dbr.d3']['y']) ? $this->options['dbr.d3']['y'] : '400';
        // Get ID's
        foreach ($this->dataIn as $data) {
            if (sizeof($data) < 4) {
                $source_id = $source_data = $data[0];
                $target_id = $target_data = $data[1];
                $data_value = $data[2];
            } else {
                $source_id = $data[0];
                $source_data = $data[1];
                $target_id = $data[2];
                $target_data = $data[3];
                $data_value = $data[4];
            }
            $this->sources[ $source_id ] = $this->node_add( $source_id, $source_data );
            $this->targets[ $target_id  ] = $this->node_add( $target_id, $target_data );
            
            if ($this->sources[ $source_id ] === $this->targets[ $target_id ]) {
                echo '<div class="comment">Circular reference with '.$source_data.'&rarr;'.$target_data.' '.$data_value.'</div>';
            } else {
                $url = Extension::get_report_links_js($data);
                $this->link_add( $this->sources[ $source_id ], $this->targets[ $target_id ], $data_value, $url );
            }
            
        }
    	Extension::add_drill_menu();
        echo '<div'.Extension::resultclass(true, 'sankey').Extension::keepwithnext().' id="'.$obj_id.'"></div>';
    ?>
<script>
var sankey_data = {
data: <?php echo json_encode(array("nodes" => $this->node_get(), "links" => $this->link_get() )); ?>,
object: <?php echo json_encode($obj_id); ?>,
title:  <?php echo json_encode($title); ?>,
size: {x: <?php echo $width; ?>, y: <?php echo $height; ?> },
format: {number: <?php echo json_encode($number_format); ?>, suffix: <?php echo json_encode($number_suffix); ?>}
};
if (typeof sankey_datas == "undefined") {
    sankey_datas = [];
}
sankey_datas.push(sankey_data);
</script>
<script type="text/javascript" src="<?php echo Extension::getBaseURL();  ?>extensions/d3/sankey.js"></script>
<?php
    }
}

abstract class Ext_d3js {
    public $sources = array();
    public $targets = array();
    public $id;
    public $options;
    public $dataIn;
    public $colInfo;

    function create( $id, $options,  $dataIn, $colInfo )
    {
        $chart = null;
        switch ($options['dbr.d3']['chart']) {
            case 'sankey':
                $chart = new Ext_d3Sankey($id, $options,  $dataIn, $colInfo);
                break;
        }
        if ($chart) {
            $chart->create();
        }
        
    }
}

function Ext_d3($id, $options,  $dataIn, $colInfo )
{
    Ext_d3js::create( $id, $options,  $dataIn, $colInfo );
}
?>