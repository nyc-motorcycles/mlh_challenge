class RegistrationsController < Devise::RegistrationsController

  include SetReferrer

  before_filter :configure_permitted_parameters, only: [:create]

  after_filter :set_referrer, only: [:create]

  def create
    params[:referral_code] = params[:referral_code]

    super
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |u|
        u.permit(:username, :email, :password, :name)
      end
    end

end
