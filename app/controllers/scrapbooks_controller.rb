class ScrapbooksController < ApplicationController
  before_action :set_scrapbook, only: :show

  def show
    @memories = @scrapbook.memories.sort_by { |memory| memory.date }
    @family = @scrapbook.family
    @memory = Memory.new
  end

  def new
    @scrapbook = Scrapbook.new
  end

  def create
    @scrapbook = Scrapbook.new(scrapbook_params)
    @scrapbook.user = current_user
    @family = Family.find(params[:family_id])
    @scrapbook.family = Family.find(params[:family_id])
    if @scrapbook.save
      redirect_to family_scrapbook_path(@family, @scrapbook)
    else
      render :new
    end
  end

  private

  def set_scrapbook
    @scrapbook = Scrapbook.find(params[:id])
  end

  def scrapbook_params
    params.require(:scrapbook).permit(:scrapbook_title, :scrapbook_description, :photo)
  end
end
