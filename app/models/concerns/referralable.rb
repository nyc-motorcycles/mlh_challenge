module Referralable
  extend ActiveSupport::Concern

  def generate_referral
    self.referral_code = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)

      break random_token unless self.class.exists?(referral_code: random_token)
    end
  end
end
