class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_AUTH_USER'], password: ENV['ADMIN_AUTH_PASSWORD']

  def show
  end

end
