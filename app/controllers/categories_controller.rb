class CategoriesController < ApplicationController
  def change_rank
    @category = Category.find_by_uuid(params[:id])
    if params[:move] == 'up'
      @category.rank += 1
    else
      @category.rank -= 1
    end
    @category.save
    redirect_to '/'
  end
  def create
    @category = Category.create(title: params[:title])
  end
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
  end
end
