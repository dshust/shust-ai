class PagesController < ApplicationController
  def home
    @projects = Project.order(:position)
  end
end
