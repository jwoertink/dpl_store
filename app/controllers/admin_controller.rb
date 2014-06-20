class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :dont_let_dem_users_in_dis_ting

  private

  def dont_let_dem_users_in_dis_ting
    unless current_user && current_user.admin?
      redirect_to(root_path, alert: "Oh no you di'nt")
    end
  end
end
