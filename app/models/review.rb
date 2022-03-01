class Review < ActiveRecord::Base
  belongs_to :game
  belongs_to :user

  #Class methods
  def self.highest_score
    self.maximum(:score)
  end

  def self.average_score
    self.average(:score).to_i
  end


  #Instance methods
  def get_user_name
    self.user.name
  end

  def get_game_title
    self.game.title
  end
  

end
