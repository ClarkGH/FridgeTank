class GroceryListsController < ApplicationController

  def index
    @lists = GroceryList.where('user_id = ?', session[:id])
  end

  def show
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