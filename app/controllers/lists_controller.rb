class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @new_list = List.new(list_params)
    @new_list.save
    redirect_to index_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
