class CategoriesController < ApplicationController
  def create
    @category = Category.create(title: params[:title])
  end
end
