class ScrapbooksController < ApplicationController
  before_action :set_scrapbook, only: :show

  def show
  end

  private

  def set_scrapbook
    @scrapbook = Scrapbook.find(params[:id])
  end
end
