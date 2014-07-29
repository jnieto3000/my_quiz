class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :student_id
      t.integer :quiz_id
      t.integer :answer_1
      t.integer :answer_2
      t.integer :score

      t.timestamps
    end
  end
end
