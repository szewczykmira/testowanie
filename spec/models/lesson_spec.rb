require 'rails_helper'

RSpec.describe Lesson, :type => :model do
  it 'lesson requires name, teacher, date, hour' do
    lesson = Lesson.new()
    expect(lesson.valid?).to eq(false)

    lesson = Lesson.new(name: 'test')
    expect(lesson.valid?).to eq(false)

    lesson = Lesson.new(name: 'test', person_id:3)
    expect(lesson.valid?).to eq(false)

    lesson = Lesson.new(name: 'test', person_id:3, day: 'Monday')
    expect(lesson.valid?).to eq(false)
  end

  it 'valid product' do
    lesson = Lesson.new(name: 'test', person_id:3, day: 'Monday', hour: [12,44])
    expect(lesson.valid?).to eq(true)
  end
end