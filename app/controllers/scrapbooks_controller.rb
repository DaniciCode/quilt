class ScrapbooksController < ApplicationController
  before_action :set_scrapbook, only: :show

  def show
    @memories = @scrapbook.memories
  end

  def new
    @scrapbook = Scrapbook.new
  end

  def create
    @scrapbook = Scrapbook.new(scrapbook_params)
    if @scrapbook.save
      redirect_to family_scrapbook_path
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
