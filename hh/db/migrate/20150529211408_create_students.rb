class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :F_name
      t.string :L_name
      t.string :gender
      t.date :B_date
      t.string :email
      t.decimal :mob
      t.string :address
      t.string :city
      t.string :state
      t.string :Regstration_no
      t.string :department
      t.string :program

      t.timestamps null: false
    end
  end
end
