class Milestone < ApplicationRecord
  has_many :pomodoros, dependent: :destroy
  belongs_to :entry
end
