require 'rails_helper'

RSpec.describe "Referral sign up" do
  let(:referrer) { create(:user, name: "Test Name") }

  describe "user signs up with a referral code" do
    context "with a correct code" do
      it "should add the correct referrer to user" do

        visit "#{new_user_registration_path}?referral_code=#{referrer.referral_code}"

        when_a_new_use_signs_up
        expect_referrer_to_be_saved
      end
    end

    context "with an incorrect code" do
      it "should add the correct referrer to user" do

        visit "#{new_user_registration_path}?referral_code=wrong_code"

        when_a_new_use_signs_up
        expect_referrer_to_not_be_saved
      end
    end
  end

  private

    def when_a_new_use_signs_up
      fill_in("user[name]", with: "New user")
      fill_in("user[email]", with: "new_user@email.com")
      fill_in("user[password]", with: "password!")
      fill_in("user[password_confirmation]", with: "password!")
      click_button('Sign up')
    end

    def expect_referrer_to_be_saved
      expect(page).to have_content("Welcome! You have signed up successfully.")

      click_link("My profile")

      expect(page).to have_content("Test Name")
    end

    def expect_referrer_to_not_be_saved
      expect(page).to have_content("Welcome! You have signed up successfully.")

      click_link("My profile")

      expect(page).not_to have_content("Test Name")
    end
end
