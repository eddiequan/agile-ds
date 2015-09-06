class Iteration < ActiveRecord::Base

  validates :date, {presence: true}
  validates :points_done, {presence: true}
  validates :points_done_for_release, {presence: true}
  validates :points_planned, {presence: true}
  validates :defects_completed, {presence: true}
  validates :defects_incomplete, {presence: true}

end