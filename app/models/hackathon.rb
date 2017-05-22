class Hackathon < ActiveRecord::Base
  has_many :hackathon_users
  has_many :users, through: :hackathon_users
end
