class AddDjoinToStds < ActiveRecord::Migration
  def change
    add_column :stds, :djoin, :date
  end
end
