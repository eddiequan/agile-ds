class Iteration < ActiveRecord::Base

  validates :user_id, {presence: true}
  validates :date, {presence: true}
  validates :points_done, {presence: true}
  validates :points_done_for_release, {presence: true}
  validates :points_planned, {presence: true}
  validates :defects_completed, {presence: true}
  validates :defects_incomplete, {presence: true}

  def self.all_by_descending_date
    Iteration.all.order(date: :desc)
  end

  def number
    Iteration.all.where("date < ?", date).count + 1
  end
end