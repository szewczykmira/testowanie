class Person < ActiveRecord::Base
  validates :first_name, presence: true
  validates :second_name, presence: true
  validates :birth_date, presence: true
  validates :group_id, presence: true

<<<<<<< HEAD
  belongs_to :group

=======
>>>>>>> 7735f20e1492a19a9207e6852b254462be106448
  def is_teacher?
    :is_teacher
  end
end
