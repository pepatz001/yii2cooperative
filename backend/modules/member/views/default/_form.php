<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

use backend\modules\config\models\Prefix;

/* @var $this yii\web\View */
/* @var $model backend\modules\member\models\Members */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="members-form">

    <?php $form = ActiveForm::begin(['layout' => 'horizontal']); ?>

    <?= $form->field($model, 'account_no',['enableAjaxValidation' => true])->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Employee_no',['enableAjaxValidation' => true])->textInput(['maxlength' => true]) ?>
  

    <?= $form->field($model, 'prefix_id')->dropDownList(Prefix::getList(),['prompt'=>Yii::t('app','Select')]) ?>

    <?= $form->field($model, 'name')->textInput(['rows' => 6]) ?>

    <?= $form->field($model, 'lastname')->textInput(['rows' => 6]) ?>

    <?= $form->field($model, 'id_card')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'birthday')->textInput() ?>

    <?= $form->field($model, 'phone_number')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'phone_officer')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'company')->textInput(['rows' => 6]) ?>

    <?= $form->field($model, 'department')->textInput(['rows' => 6]) ?>

    <?= $form->field($model, 'position')->textInput(['rows' => 6]) ?>

    <?= $form->field($model, 'job_level')->textInput(['rows' => 6]) ?>

    <?= $form->field($model, 'member_type')->textInput(['rows' => 6]) ?>

    <?= $form->field($model, 'officer')->textInput(['rows' => 6]) ?>

    <?= $form->field($model, 'date_regis')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
