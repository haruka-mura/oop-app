module SessionsHelper

  #ログイン処理
  def log_in(user)
    session[:user_id] = user.id
  end

  
end
