class UsersController < ApplicationController

	def create
      respond_to do |format|
        if @user.save
          format.html { redirect_to @user, notice: 'User was successfully created.' }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      @user = User.find(params[:id])
      if user_params[:password].blank?
        user_params.delete(:password)
        user_params.delete(:password_confirmation)
      end
      if @user.update_attributes(secure_params)
      successfully_updated = if needs_password?(@user, user_params)
                               @user.update(user_params)
                             else
                               @user.update_without_password(user_params)
                             end
      end
      respond_to do |format|
        if successfully_updated
          format.html { redirect_to @user, notice: 'User was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    def secure_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
    
    def needs_password?(user, params)
      params[:password].present?
    end

end
