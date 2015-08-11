class WelcomeController < ApplicationController
  def index
    if params[:format].nil?&&params[:search].blank?
      @products= Product.all
    elsif 
      params[:search].blank?
      @category = Category.find_by_id(params[:format])

      @products = @category.products
     
    else
      @products = Product.where ("name LIKE '%#{params[:search]}'")
    end
  end
end
