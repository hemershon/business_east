class Backoffice::UsersController < BackofficeController
  
  def index
    @users = User.all
  end

  def show
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      puts "User saved successfully."
      redirect_to backoffice_users_path(@user), notice: "Usuário cadastrado com sucesso!"
    else
      puts "Errors: #{@user.errors.full_messages}"
      puts "User attributes: #{@user.attributes}"
      puts "Errors: #{@user.errors.full_messages}"
      render :new, status: :unprocessable_entity
    end
  end
  
  def update
  end
  
  def destroy
  end

  private 

  def user_params
    params.require(:user).permit(:email, :cnpj_cpf, :company_name, :corporate_name, :description, :phone, :password, :password_confirmation )
  end
end
