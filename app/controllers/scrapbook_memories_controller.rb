class ScrapbookMemoriesController < ApplicationController
  def new
    @family = Family.find(params[:family_id])
    @scrapbook = Scrapbook.find(params[:scrapbook_id])
    @scrapbook_memory = ScrapbookMemory.new
    @memories = current_user.memories
  end

  def create
    @memory = Memory.find(params[:scrapbook_memory][:memory])
    @scrapbook = Scrapbook.find(params[:scrapbook_id])
    @scrapbook_memory = ScrapbookMemory.create(memory: @memory, scrapbook: @scrapbook)
    @family = Family.find(params[:family_id])
    if @scrapbook_memory.save
      redirect_to family_scrapbook_path(@family, @scrapbook)
    end
  end
end
