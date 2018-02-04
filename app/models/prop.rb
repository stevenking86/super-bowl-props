class Prop < ActiveRecord::Base
  has_many :user_props
  has_many :users, through: :props
  has_many :choices
end
