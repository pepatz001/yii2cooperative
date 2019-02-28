<?php

namespace backend\modules\member\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\modules\member\models\Members;

/**
 * MembersSearch represents the model behind the search form about `backend\modules\member\models\Members`.
 */
class MembersSearch extends Members
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['account_no', 'Employee_no', 'title', 'name', 'lastname', 'id_card', 'birthday', 'phone_number', 'phone_officer', 'company', 'department', 'position', 'job_level', 'member_type', 'officer', 'date_regis','fullname'], 'safe'],
            [['prefix_id'], 'integer'],
        ];
    }

    public $fullname;
    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Members::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'prefix_id' => $this->prefix_id,
            'birthday' => $this->birthday,
            'date_regis' => $this->date_regis,
        ]);

        $query->andFilterWhere(['like', 'account_no', $this->account_no])
            ->andFilterWhere(['like', 'Employee_no', $this->Employee_no])
            ->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'lastname', $this->lastname])
            ->andFilterWhere(['like', 'id_card', $this->id_card])
            ->andFilterWhere(['like', 'phone_number', $this->phone_number])
            ->andFilterWhere(['like', 'phone_officer', $this->phone_officer])
            ->andFilterWhere(['like', 'company', $this->company])
            ->andFilterWhere(['like', 'department', $this->department])
            ->andFilterWhere(['like', 'position', $this->position])
            ->andFilterWhere(['like', 'job_level', $this->job_level])
            ->andFilterWhere(['like', 'member_type', $this->member_type])
            ->andFilterWhere(['like', 'officer', $this->officer]);

        return $dataProvider;
    }
}
