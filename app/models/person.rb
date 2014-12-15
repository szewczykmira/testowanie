class Person < ActiveRecord::Base
  validates :first_name, presence: true
  validates :second_name, presence: true
  validates :birth_date, presence: true
  validates :group_id, presence: true, :if => :is_not_teacher?

  belongs_to :group

  def is_teacher?
    is_teacher == true
  end
  def is_not_teacher?
    not is_teacher?
  end
end
