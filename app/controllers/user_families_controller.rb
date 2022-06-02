class UserFamiliesController < ApplicationController

  # def create
  #   @user_family = UserFamily.new
  #   @family = Family.find(params[:family_id])
  #   @user_family.family = @family
  #   @user_family.user = current_user
  #   if @user_family.save
  #     redirect_to family_path(@family)
  #   else
  #     render 'families/show'
  #   end
  #end

  def create
    @family = Family.find(params[:family_id])
    UserFamily.create(user: current_user, family: @family)
    redirect_to @family
  end

  def destroy
    #@family = Family.find(params[:family_id])
    @user_family = UserFamily.find(params[:id])
    @user_family.destroy

    redirect_to @user_family.family
  end

end
