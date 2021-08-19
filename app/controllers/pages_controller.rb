class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @roles = ["mum", "dad", "girlfriend", "boyfriend", "sister", "brother"]
  end
end
