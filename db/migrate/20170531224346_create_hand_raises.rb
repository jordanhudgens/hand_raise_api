class CreateHandRaises < ActiveRecord::Migration[5.1]
  def change
    create_table :hand_raises do |t|
      t.string :question
      t.text :body
      t.string :student_email
      t.string :student_name
      t.string :guide_title
      t.integer :guide_id
      t.text :resolution
      t.string :ta_name
      t.string :ta_email
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
