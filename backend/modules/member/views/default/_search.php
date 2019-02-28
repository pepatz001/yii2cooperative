<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\modules\member\models\MembersSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="members-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'account_no') ?>

    <?= $form->field($model, 'Employee_no') ?>

    <?= $form->field($model, 'title') ?>

    <?= $form->field($model, 'prefix_id') ?>

    <?= $form->field($model, 'name') ?>

    <?php // echo $form->field($model, 'lastname') ?>

    <?php // echo $form->field($model, 'id_card') ?>

    <?php // echo $form->field($model, 'birthday') ?>

    <?php // echo $form->field($model, 'phone_number') ?>

    <?php // echo $form->field($model, 'phone_officer') ?>

    <?php // echo $form->field($model, 'company') ?>

    <?php // echo $form->field($model, 'department') ?>

    <?php // echo $form->field($model, 'position') ?>

    <?php // echo $form->field($model, 'job_level') ?>

    <?php // echo $form->field($model, 'member_type') ?>

    <?php // echo $form->field($model, 'officer') ?>

    <?php // echo $form->field($model, 'date_regis') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
