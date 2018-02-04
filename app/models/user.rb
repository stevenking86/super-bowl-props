class User < ActiveRecord::Base
  has_many :user_choices
  has_many :choices, through: :user_choices

  validates :name, uniqueness: true

  def score
    choices.where(correct: true).try(:count)
  end

  def prop_pick(prop)
    binding.pry
    prop.choices.select { |c| c.id.in?(choice_ids) }.try(:first)
  end

  def choices_ids
    choices.pluck(:id)
  end
end
