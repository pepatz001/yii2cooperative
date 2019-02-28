<?php

namespace backend\modules\member\models;

use Yii;

use backend\modules\config\models\Prefix;
/**
 * This is the model class for table "members".
 *
 * @property string $account_no
 * @property string $Employee_no
 * @property string $title
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
 * @property string $date_regis
 *
 * @property Prefix $prefix
 */
class Members extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'members';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['account_no', 'Employee_no', 'title', 'name', 'lastname', 'id_card', 'birthday', 'phone_number', 'phone_officer', 'company', 'department', 'position', 'job_level', 'member_type', 'officer'], 'required'],
            [['title', 'name', 'lastname', 'company', 'department', 'position', 'job_level', 'member_type', 'officer'], 'string'],
            [['prefix_id'], 'integer'],
            [['birthday', 'date_regis'], 'safe'],
            [['account_no', 'Employee_no'], 'string', 'max' => 15],
            [['id_card'], 'string', 'max' => 13],
            [['phone_number'], 'string', 'max' => 10],
            [['phone_officer'], 'string', 'max' => 20],
            [['account_no'], 'unique'],
            [['Employee_no'], 'unique'],
            [['prefix_id'], 'exist', 'skipOnError' => true, 'targetClass' => Prefix::className(), 'targetAttribute' => ['prefix_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'account_no' => Yii::t('app', 'เลขทะเบียนสหกรณ์'),
            'Employee_no' => Yii::t('app', 'เลขประจำตัวพนักงาน'),
            'title' => Yii::t('app', 'คำนำหน้า'),
            'name' => Yii::t('app', 'ชื่อ'),
            'lastname' => Yii::t('app', 'สกุล'),
            'id_card' => Yii::t('app', 'รหัสบัตรประชาชน'),
            'birthday' => Yii::t('app', 'วัน / เดือน / ปีเกิด'),
            'phone_number' => Yii::t('app', 'โทรศัพท์'),
            'phone_officer' => Yii::t('app', 'โทรศัพท์ทีทำงาน'),
            'company' => Yii::t('app', 'ชื่อบริษัท'),
            'department' => Yii::t('app', 'แผนก'),
            'position' => Yii::t('app', 'ตำแหน่ง'),
            'job_level' => Yii::t('app', 'Job Level'),
            'member_type' => Yii::t('app', 'ประเภท'),
            'officer' => Yii::t('app', 'Officer'),
            'date_regis' => Yii::t('app', 'Date Regis'),
            'prefix_id' => Yii::t('app', 'คำนำหน้า'),
            'fullname' => Yii::t('app', 'ชื่อ-นามสกุล'),
            
        ];
    }
    
    public function getFullname(){
        return ($this->prefix_id?$this->prefix->title:"").$this->name." ".$this->lastname;
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPrefix()
    {
        return $this->hasOne(Prefix::className(), ['id' => 'prefix_id']);
    }
}
