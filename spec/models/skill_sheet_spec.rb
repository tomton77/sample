require 'rails_helper'

RSpec.describe SkillSheet, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it 'display_age age(10) -> 10歳' do
    skill_sheet = SkillSheet.new(user_id: 1, user_name: 'test', age: 10, sex: 1)
    expect(skill_sheet.display_age).to eq '10歳'
  end

  it 'display_age age(nil) -> nil' do
    skill_sheet = SkillSheet.new(user_id: 1, user_name: 'test', sex: 1)
    expect(skill_sheet.display_age).to eq nil
  end

  it 'display_sex sex(1) -> 男' do
    skill_sheet = SkillSheet.new(user_id: 1, user_name: 'test', age: 10, sex: 1)
    expect(skill_sheet.display_sex).to eq '男'
  end

  it 'display_sex sex(2) -> 女' do
    skill_sheet = SkillSheet.new(user_id: 1, user_name: 'test', age: 10, sex: 2)
    expect(skill_sheet.display_sex).to eq '女'
  end

  it 'display_sex sex(nil) -> その他' do
    skill_sheet = SkillSheet.new(user_id: 1, user_name: 'test', age: 10)
    expect(skill_sheet.display_sex).to eq 'その他'
  end
end
