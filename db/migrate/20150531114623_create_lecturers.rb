class CreateLecturers < ActiveRecord::Migration
  def change
    create_table :lecturers do |t|
      t.string :name
      t.string :desig
      t.date :date_of_join
      t.string :address
      t.string :qualification
      t.decimal :cnic
      t.string :type
      t.string :description

      t.timestamps null: false
    end
  end
end
