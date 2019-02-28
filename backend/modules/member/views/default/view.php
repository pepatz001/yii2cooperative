<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\modules\member\models\Members */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Members'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="members-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->account_no], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->account_no], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'account_no',
            'Employee_no',
            'title:ntext',
            'prefix_id',
            'name:ntext',
            'lastname:ntext',
            'id_card',
            'birthday',
            'phone_number',
            'phone_officer',
            'company:ntext',
            'department:ntext',
            'position:ntext',
            'job_level:ntext',
            'member_type:ntext',
            'officer:ntext',
            'date_regis',
        ],
    ]) ?>

</div>
