class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    "create okay"
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  def new
    # @user_form = UserForm.new(User.new)
    @user = User.new
  end

  def create
    @user = User.new(user_form_params)

    if decorater.save
      redirect_to @user_form.user, notice: "SUCCESS!"
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

    def user_form_params
      params.require(:user_form).permit(:name, :email, :password)
    end
end
