class Lesson < ActiveRecord::Base
  validates :name, presence: true
  validates :person_id, presence:true
  validates :day, :hour, presence:true

  has_many :people
end
