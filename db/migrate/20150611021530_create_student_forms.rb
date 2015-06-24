class CreateStudentForms < ActiveRecord::Migration
  def change
    create_table :student_forms do |t|
      t.string :name
      t.string :email
      t.string :cell
      t.string :gender
      t.string :group
      t.string :options
      t.text :subject

      t.timestamps null: false
    end
  end
end
