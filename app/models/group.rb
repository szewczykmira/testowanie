class Group < ActiveRecord::Base
  validates :name, presence: true
  validates :person_id, presence: true

  has_many :people
  accepts_nested_attributes_for :people
end
