class HomeController < ApplicationController
  def contact_show

  end

  def show_team
  end

  def landing_page
    @first_name = params[:first_name]
  end
end
