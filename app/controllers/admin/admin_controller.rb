class Admin::AdminController < ApplicationController
  before_action :authenticate_user!
  def dashboard
    render layout: 'admin'
  end
end
