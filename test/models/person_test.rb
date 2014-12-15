require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test 'person requires first_name' do
    person = Person.new(second_name: 'Smith', birth_date: '19-09-1991', group_id:3)
    assert_not person.valid?
  end
  test 'person requires second_name' do
    person = Person.new(first_name: 'John', birth_date: '19-09-1991', group_id:7)
    assert_not person.valid?
  end
  test 'person requires birth date' do
    person = Person.new(first_name: 'John', second_name: 'Smith')
    assert_not person.valid?
  end
  test 'student requires group_id' do
    person = Person.new(first_name: 'John', second_name: 'Smith', birth_date:'19-09-1991', is_teacher:false)
    assert_not person.valid?
  end
  test 'teacher do not need group_id' do
    person = Person.new(first_name: 'John', second_name: 'Smith', birth_date: '19-09-1991', is_teacher:true)
    assert person.valid?
  end
  test 'valid student' do
    person = Person.new(first_name: 'John', second_name: 'Smith', birth_date: '19-09-1991', group_id:3, is_teacher: false)
    assert person.valid?
  end
end
