class SkillSheet < ApplicationRecord
  belongs_to :user
  paginates_per 1

  def display_age 
    age.to_s + "歳" if age&.to_s
  end

  def display_sex
    case sex
    when 1 then
      "男"
    when 2 then
      "女"
    else
      "その他"
    end
  end
end
