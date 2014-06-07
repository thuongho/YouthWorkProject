class StaticPagesController < ApplicationController

  def index
    redirect_to minor_path(current_minor.id) if minor_signed_in?
  end
end
