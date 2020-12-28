class AdministratorsController < ApplicationController #Devise::RegistrationsController
  def index
    @administrators = User.all
  end

  def new
    session.delete(:admin_user)
    @administrator = User.new
  end

  def update
    session.delete(:admin_user)
    @administrator = User.find(params[:id])
    session[:admin_user] = @administrator
  end

  def new_confirm
    #@administrator = User.create(params.require(:user).permit(:email,:password))
    @administrator = User.new(params.require(:user).permit(:email,:password, :password_confirmation))
    #session[:admin_user] = @administrator
  end

  def update_confirm
    # idからデータ取得→パラメータを格納
    @administrator = User.find(params[:user][:id])
    @administrator.assign_attributes(params.require(:user).permit(:id, :email, :password, :password_confirmation))
    #session[:admin_user] = @administrator
    return if @administrator.valid?
    #flash[:notice] = "入力エラーが発生"
    render :update
  end

  def new_complete
    User.create!(session[:admin_user])
    session.delete(:admin_user)
    redirect_to administrators_index_path
  end

  def update_complete
    #@administrator = session[:admin_user]
    @administrator = User.find(params[:user][:id])
    @administrator.update_attributes!(params.require(:user).permit(:id, :email, :password, :password_confirmation))
    #@administrator.save
    #session.delete(:admin_user)
    redirect_to administrators_index_path
  end

  def detail
    @administrator = User.find(params[:id])
  end

  private

  def administrator_params
    #params.require(:user).permit(:email,:email)
    #params.require(:user).permit(:password,:password)
  end

end
