require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  test 'group requires name' do
    group = Group.new(person_id: 1, profile: 'XYZ')
    assert_not group.valid?, 'Name is required'
  end

  test 'group requires person_id' do
    group = Group.new(person_id: 7)
    assert_not group.valid?, 'Person_id is required'
  end

  test 'valid group' do
    group = Group.new(name: 'Ii', person_id: 7)
    assert group.valid?
  end
end
