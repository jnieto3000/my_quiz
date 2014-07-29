class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :student_id
      t.text :contents

      t.timestamps
    end
  end
end
