class UserFamiliesController < ApplicationController
  def new
    @family = Family.find(params[:family_id])
    @user = current_user
    @user_family = UserFamily.new
    @users = User.all
  end

  def create
    @family = Family.find(params[:family_id])
    @user = current_user
    @user_family = UserFamily.create(user: current_user, family: @family)
    if @user_family.save
      redirect_to @family
    end
  end

  def destroy
    #@family = Family.find(params[:family_id])
    @user_family = UserFamily.find(params[:id])
    @user_family.destroy

    redirect_to @user_family.family
  end

end
