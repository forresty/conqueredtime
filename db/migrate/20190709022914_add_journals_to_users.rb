class AddJournalsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :journals, :user, index: true
  end
end
