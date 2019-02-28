<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$this->beginContent('@app/views/layouts/main.php');
?>
<div class="box box-info">
    <div class="box-header">
        <h3 class="box-title">
            <?=$this->title?>
        </h3>

        <div class="box-tools">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
        </div>
    </div>
    <div class="box-body no-padding">
        <div class="raw">   
            <div class="col-sm-12">
                <?= $content ?>
            </div>
        </div>
    </div>
</div>


<?php
$this->endContent();
?>