class User < ActiveRecord::Base
  has_many :reviews
  has_many :games, through: :reviews

  def list_all_games_reviewed
    self.games.pluck(:title)
  end

  def list_all_review_comments
    self.reviews.pluck(:comment)
  end
end
