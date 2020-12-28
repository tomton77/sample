class CreateSkillSheets < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_sheets do |t|
      t.string :user_id
      t.string :user_name
      t.integer :age
      t.string :affiliation
      t.integer :sex
      t.string :academic_history
      t.string :nearest_station
      t.string :qualification
      t.string :earnings
      t.string :specialty
      t.string :specialty_technology
      t.string :good_business
      t.string :self_pr

      t.timestamps
    end
  end
end
