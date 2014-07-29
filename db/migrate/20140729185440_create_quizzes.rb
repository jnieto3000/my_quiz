class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :teacher_id
      t.string :name
      t.string :question_1
      t.string :q1_option_1
      t.string :q1_option_2
      t.string :q1_option_3
      t.integer :answer_1
      t.string :question_2
      t.string :q2_option_1
      t.string :q2_option_2
      t.string :q2_option_3
      t.integer :answer_2

      t.timestamps
    end
  end
end
