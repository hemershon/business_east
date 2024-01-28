class Backoffice::UsersController < BackofficeController
  def index
  end

  def new 
    @user = User.new
  end
end
