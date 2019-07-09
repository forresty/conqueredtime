class AddMilestoneToPomodoros < ActiveRecord::Migration[5.2]
  def change
    add_reference :pomodoros, :milestone, foreign_key: true
    add_reference :pomodoros, :user, foreign_key: true
  end
end
