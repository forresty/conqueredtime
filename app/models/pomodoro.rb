class Pomodoro < ApplicationRecord
  belongs_to :milestone
  belongs_to :user
end
