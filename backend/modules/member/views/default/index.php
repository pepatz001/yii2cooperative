<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\modules\member\models\MembersSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'จัดการสมาชิก');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="members-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'เพิ่มสมาชิก'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'account_no',
            'Employee_no',
            //'title:ntext',
            //'prefix_id',
            'fullname',
            // 'lastname:ntext',
            // 'id_card',
            // 'birthday',
            // 'phone_number',
            // 'phone_officer',
            // 'company:ntext',
            // 'department:ntext',
            // 'position:ntext',
            // 'job_level:ntext',
            // 'member_type:ntext',
            // 'officer:ntext',
            // 'date_regis',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
