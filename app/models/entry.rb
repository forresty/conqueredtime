class Entry < ApplicationRecord
  belongs_to :journal
  has_many :milestones, dependent: :destroy
end
