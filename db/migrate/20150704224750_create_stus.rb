class CreateStus < ActiveRecord::Migration
  def change
    create_table :stus do |t|
      t.string :student_name
      t.string :f_name
      t.string :reg_no
      t.references :program, index: true, foreign_key: true
      t.references :session, index: true, foreign_key: true
      t.string :domicile
      t.string :address
      t.decimal :mob
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
