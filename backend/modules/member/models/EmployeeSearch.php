<?php

namespace backend\modules\member\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\modules\member\models\Employee;

/**
 * EmployeeSearch represents the model behind the search form about `backend\modules\member\models\Employee`.
 */
class EmployeeSearch extends Employee
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'name', 'lastname', 'id_card', 'birthday', 'phone_number', 'phone_officer', 'company', 'department', 'position', 'job_level', 'member_type', 'officer'], 'safe'],
            [['prefix_id', 'created_at', 'created_by', 'updated_at', 'updated_by'], 'integer'],
        ];
    }

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
        $query = Employee::find();

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
            'created_at' => $this->created_at,
            'created_by' => $this->created_by,
            'updated_at' => $this->updated_at,
            'updated_by' => $this->updated_by,
        ]);

        $query->andFilterWhere(['like', 'id', $this->id])
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
