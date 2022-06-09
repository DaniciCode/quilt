class MemoriesController < ApplicationController
  def index
    #@memories = Memory.all
    #se memorias do proprio user
    @memories = Memory.where(user: current_user).sort_by { |memory| memory.date }
    @family = Family.new
    @memory = Memory.new
  end

  def show
    @memory = Memory.find(params[:id])
  end

  def new
    @family = Family.find(params[:family_id])
    @scrapbook = Scrapbook.find(params[:scrapbook_id])
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.user = current_user
    @scrapbook = Scrapbook.find(params[:scrapbook_id])
    @family = Family.find(params[:family_id])

    if @memory.save
      @scrapbook_memory = ScrapbookMemory.new(memory: @memory, scrapbook: @scrapbook)
      @scrapbook_memory.save
      redirect_to family_scrapbook_path(@family, @scrapbook)
    else
      render :new
    end
  end

  def create_only_memory
    @memory = Memory.new(memory_params)
    @memory.user = current_user
      if @memory.save
        redirect_to memories_path
      end
  end

  def destroy
    @memory = Memory.find(params[:id])
    @scrapbookmemory = ScrapbookMemory.where(memory: @memory).first
    if @scrapbookmemory.nil?
      @memory.destroy
    else
      @scrapbookmemory.destroy
      @memory.destroy
    end
    redirect_to memories_path
  end


  private

  def memory_params
    params.require(:memory).permit(:title, :description, :date, :location, :photo)
  end
end
