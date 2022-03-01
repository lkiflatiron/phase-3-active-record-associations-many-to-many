class Game < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  #Class methods
  def self.get_all_game_titles
    # self.all.map do |game|
    #   game.title
    # end
    self.pluck(:title, :platform)
  end

  #Instance methods
  def get_all_review_comments
    self.reviews.pluck(:comment)
  end 

  def get_all_user_names
    self.users.pluck(:name)
  end

end
