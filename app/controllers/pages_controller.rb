class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:secret]
  respond_to :html, :js
  def index
    @activities = PublicActivity::Activity.all
  end
end