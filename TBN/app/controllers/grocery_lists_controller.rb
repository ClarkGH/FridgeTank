class GroceryListsController < ApplicationController

  def index
    @lists = GroceryList.where('user_id = ?', session[:id])
  end

  def show
    @list = GroceryList.find(params[:id])
    redirect_to grocery_lists_path if @list.user != current_user
    @list
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end