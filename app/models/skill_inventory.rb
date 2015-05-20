require 'yaml/store'
require_relative 'skill'

class SkillInventory
  def self.database
    @database ||= YAML::Store.new("db/skill_inventory")
  end

  def self.base_skills
    database.transaction do
      database['skills'] || []
    end
  end

  def self.all
    base_skills.map { |data| Skill.new(data) }
  end
end
