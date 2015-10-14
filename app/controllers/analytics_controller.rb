class AnalyticsController < ApplicationController
  def analytics
    if params[:view]
      view = View.find_or_create_by(key: params[:view][:key]) do |view|
        view.key = params[:view][:key]
        view.ip = params[:view][:ip]
        view.country = params[:view][:country]
        view.region = params[:view][:region]
        view.organization = params[:view][:organization]
        view.city = params[:view][:city]
        view.latitude = params[:view][:latitude]
        view.longitude = params[:view][:longitude]
        view.path = params[:view][:path]
      end
      if params[:click]
        view.clicks.create(button: params[:click])
      end
    end
    head 200
  end
end
