class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    # @user_form = UserForm.new(User.new)
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
       UserMailer.new_user(@user).deliver_now
      redirect_to @user, notice: "SUCCESS!"
    else
      render :new
    end
  end

  # GET /users/1/edit
  def edit
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update

  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    # @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
