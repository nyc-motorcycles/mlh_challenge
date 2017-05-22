class User < ActiveRecord::Base

  include Referralable

  before_create :create_referral_code

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :hackathon_users
  has_many :hackathons, through: :hackathon_users
  has_many :referrees, class_name: "User", foreign_key: "referrer_id"

  belongs_to :referrer, class_name: "User"

  private

    def create_referral_code
      self.assign_attributes(referral_code: generate_referral)
    end
end
