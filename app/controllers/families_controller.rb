class FamiliesController < ApplicationController
  def index
    @families = UserFamily.where(user: current_user).map do |user_family|
      user_family.family
    end
  end

  def show
    @family = Family.find(params[:id])

    @family_members = @family.users
  end

  def new
    @family = Family.new
  end

  def create
    @family = Family.new(family_params)
    if @family.save
      redirect_to families_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def family_params
    params.require(:family).permit(:family_name, :description)
  end

end
