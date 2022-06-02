class FamiliesController < ApplicationController
  before_action :set_family, only: [ :show, :edit, :update ]

  def index
    @families = Family.all
  end

  def my_families
    @families = UserFamily.where(user: current_user).map do |user_family|
      user_family.family
    end
  end


  def show
    @family_members = @family.users
    #@user_family = UserFamily.new
    @user_family = UserFamily.find_by(family: @family, user: current_user)
  end

  def new
    @family = Family.new
  end

  def create
    @family = Family.new(family_params)
    @family.user = current_user
    if @family.save
      UserFamily.create(user: current_user, family: @family)
      redirect_to my_families_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @family.update(family_params)
    redirect_to family_path(@family)
  end

  private

  def family_params
    params.require(:family).permit(:family_name, :description, :photo)
  end

  def set_family
    @family = Family.find(params[:id])
  end

end
