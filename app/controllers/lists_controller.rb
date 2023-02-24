class ListsController < ApplicationController
  def list_params
    params.require(:list).permit(:name, :photo)
  end

  def index
    @lists = List.all
  end

  def new
  end

  def create
  end

  def show
    @list = List.find(params[:id])
  end
end
