class GroceryListsController < ApplicationController

  def index
    @lists = GroceryList.where('user_id = ?', session[:id])
  end

  def show
    @list = GroceryList.find(params[:id])
    return redirect_to grocery_lists_path unless @list.user == current_user
    @list
  end

  def new
    return redirect_to root_path unless current_user
    @list = List.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
    GroceryList.destroy(params[:id])
    redirect_to grocery_lists_path, :flash => { :success => "List deleted." }
  end

end