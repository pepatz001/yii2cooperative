<?php

namespace backend\modules\member\models;

use Yii;

use backend\modules\config\models\Prefix;
/**
 * This is the model class for table "employee".
 *
 * @property string $id
 * @property integer $prefix_id
 * @property string $name
 * @property string $lastname
 * @property string $id_card
 * @property string $birthday
 * @property string $phone_number
 * @property string $phone_officer
 * @property string $company
 * @property string $department
 * @property string $position
 * @property string $job_level
 * @property string $member_type
 * @property string $officer
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property Prefix $prefix
 */
class Employee extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'employee';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'prefix_id', 'name', 'lastname', 'id_card', 'birthday', 'phone_number', 'phone_officer', 'company', 'department', 'position', 'job_level'], 'required'],
            [['prefix_id', 'created_at', 'created_by', 'updated_at', 'updated_by'], 'integer'],
            [['name', 'lastname'], 'string'],
            [['birthday'], 'safe'],
            [['id'], 'string', 'max' => 8],
            [['id_card'], 'string', 'max' => 13],
            [['phone_number'], 'string', 'max' => 10],
            [['phone_officer'], 'string', 'max' => 20],
            [['company', 'department', 'position', 'job_level', 'member_type', 'officer'], 'string', 'max' => 255],
            [['prefix_id'], 'exist', 'skipOnError' => true, 'targetClass' => Prefix::className(), 'targetAttribute' => ['prefix_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'prefix_id' => Yii::t('app', 'Prefix ID'),
            'name' => Yii::t('app', 'ชื่อ'),
            'lastname' => Yii::t('app', 'Lastname'),
            'id_card' => Yii::t('app', 'Id Card'),
            'birthday' => Yii::t('app', 'Birthday'),
            'phone_number' => Yii::t('app', 'Phone Number'),
            'phone_officer' => Yii::t('app', 'Phone Officer'),
            'company' => Yii::t('app', 'Company'),
            'department' => Yii::t('app', 'Department'),
            'position' => Yii::t('app', 'Position'),
            'job_level' => Yii::t('app', 'Job Level'),
            'member_type' => Yii::t('app', 'Member Type'),
            'officer' => Yii::t('app', 'Officer'),
            'created_at' => Yii::t('app', 'Created At'),
            'created_by' => Yii::t('app', 'Created By'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'updated_by' => Yii::t('app', 'Updated By'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPrefix()
    {
        return $this->hasOne(Prefix::className(), ['id' => 'prefix_id']);
    }
}
