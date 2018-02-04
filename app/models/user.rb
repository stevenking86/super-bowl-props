class User < ActiveRecord::Base
  has_many :user_choices
  has_many :choices, through: :user_choices

  validates :name, uniqueness: true

  def score
    choices.where(correct: true).try(:count)
  end
end
