module Enva
  class DashboardController < ApplicationController
    layout "enva"

    def index
      @services = Service.order(created_at: :desc)
    end
  end
end
