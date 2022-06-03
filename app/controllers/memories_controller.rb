class MemoriesController < ApplicationController
  def index
    #@memories = Memory.all
    #se memorias do proprio user
    @memories = Memory.where(user: current_user)
  end

  def show
    @memory = Memory.find(params[:id])
  end

  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.user = current_user
    if @memory.save
      redirect_to memories_path
    else
      render :new
    end
  end

  def destroy
    @memory = Memory.find(params[:id])
    @memory.destroy

    redirect_to memories_path
  end


  private

  def memory_params
    params.require(:memory).permit(:title, :description, :date, :location, :photo)
  end
end
