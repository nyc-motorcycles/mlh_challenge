module SetReferrer
  extend ActiveSupport::Concern

  def set_referrer
    if params[:referral_code].present?
      referrer = User.find_by(referral_code: params[:referral_code])

      if referrer && current_user
        current_user.update(referrer: referrer)
      end
    end
  end
end
