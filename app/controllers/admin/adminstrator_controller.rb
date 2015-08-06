class Admin::AdminstratorController < ApplicationController
  layout"adminstrator"
  before_action :authenticate_user!

  def index
  end
end