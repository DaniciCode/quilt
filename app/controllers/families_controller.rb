class FamiliesController < ApplicationController
  before_action :set_family, only: [ :show, :edit, :update, :destroy ]

  def index
    @families = Family.all
  end

  def my_families
    @families = UserFamily.where(user: current_user).map do |user_family|
      user_family.family
    end
    @user_family = UserFamily.new
    @users = User.all
  end


  def show
    @scrapbook = Scrapbook.new
    @family_members = @family.users
    @scrapbooks = @family.scrapbooks
    #@user_family = UserFamily.new
    @user_family = UserFamily.find_by(family: @family, user: current_user)
    @scrapbook = Scrapbook.new

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
    if @family.update(family_params)
      redirect_to my_families_path
    else
      render :edit
    end
  end

  def destroy
    #if family with just one user enable destroy
    @family.destroy
  end

  private

  def family_params
    params.require(:family).permit(:family_name, :description, :photo)
  end

  def set_family
    @family = Family.find(params[:id])
  end

end
