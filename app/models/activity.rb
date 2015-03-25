class Activity < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :favorites, source: :user
end
