class Pomodoro < ApplicationRecord
  belongs_to :milestone, optional: true
  belongs_to :user


end
