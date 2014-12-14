class Person < ActiveRecord::Base
  validates :first_name, presence: true
  validates :second_name, presence: true
  validates :birth_date, presence: true
  validates :group_id, presence: true

  def is_teacher?
    :is_teacher
  end
end
