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
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def destroy
  #   @list.destroy
  #   redirect_to lists_path, status: :see_other
  # end
  # prive

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
