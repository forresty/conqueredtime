class AddColumnsToMilestones < ActiveRecord::Migration[5.2]
  def change
    add_column :milestones, :title, :string
  end
end
