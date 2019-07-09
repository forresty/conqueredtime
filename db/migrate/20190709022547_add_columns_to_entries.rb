class AddColumnsToEntries < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :goal, :string
    add_column :entries, :date, :date
  end
end
