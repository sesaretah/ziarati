class RolesController < ApplicationController
  def create
    @role = Role.create(title: params[:title])
  end
  
  def destroy
    @role = Role.find(params[:id])
    @role.destroy
  end
end
