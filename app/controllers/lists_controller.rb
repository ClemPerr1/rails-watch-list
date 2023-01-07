class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @new_list = List.new
  end

  def create
    @new_list = List.new()
  end

  private
end
