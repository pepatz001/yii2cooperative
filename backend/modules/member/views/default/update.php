<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\modules\member\models\Members */

$this->title = Yii::t('app', 'Update {modelClass}: ', [
    'modelClass' => 'Members',
]) . $model->title;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Members'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->account_no]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="members-update">
    

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
