class WelcomeController < ApplicationController
  def index
    @upcoming_hackathons = Hackathon.order(date: :asc).last(9)
  end
end
