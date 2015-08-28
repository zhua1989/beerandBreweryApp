class WelcomeController < Application WelcomeController

  def index
    redirect_to sessions_new_path
  end

end
