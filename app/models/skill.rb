class Skill
  attr_reader :title,
              :proficiency_score,
              :id

  def initialize(data)
    @id                = data["id"]
    @title             = data["title"]
    @proficiency_score = data["proficiency_score"]
  end
end
