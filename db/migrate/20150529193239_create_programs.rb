class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :program_tigle
      t.string :Duration

      t.timestamps null: false
    end
  end
end
