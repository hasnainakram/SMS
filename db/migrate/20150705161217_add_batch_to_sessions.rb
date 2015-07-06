class AddBatchToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :batch, :string
  end
end
