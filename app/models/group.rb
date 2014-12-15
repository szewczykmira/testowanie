class Group < ActiveRecord::Base
  validates :name, presence: true
  validates :person_id, presence: true

  validate :person_is_teacher

  has_many :peoples
end
