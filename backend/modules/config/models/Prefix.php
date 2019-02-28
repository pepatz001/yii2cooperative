<?php

namespace backend\modules\config\models;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "prefix".
 *
 * @property integer $id
 * @property string $title
 *
 * @property Members[] $members
 */
class Prefix extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'prefix';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title'], 'required'],
            [['title'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'title' => Yii::t('app', 'Title'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMembers()
    {
        return $this->hasMany(Members::className(), ['prefix_id' => 'id']);
    }
    
    public static function getList(){
        return ArrayHelper::map(self::find()->all(),'id','title');
    }
}
