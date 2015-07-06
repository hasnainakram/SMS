class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :session_name
      t.references :program, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
