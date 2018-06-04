class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def index
    @user = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    # @user_form = UserForm.new(User.new, user_params)
    decorator = NewUserDecorator.new(User.new(user_params))

    if decorator.save
      redirect_to users_path, notice: "SUCCESS!"
    else
      render :new
    end
  end

  def edit
  end


  def update

  end


  def destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
