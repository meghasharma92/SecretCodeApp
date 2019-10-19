class SecretCodesController < ApplicationController

  authorize_resource :class => SecretCodesController 

  def index
    @secret_codes = Code.includes(:user).paginate(page: params[:page])
  end

  def create
    code_number = secret_params[:code_number]
    message = Code.generate_code(code_number)
    flash[:notice] = message
    redirect_to secret_codes_path
  end

  def new
    @code = Code.new
  end

  def destroy
    @code = Code.find(params[:id])
    if @code.destroy
      flash[:notice] = 'Deleted Successfully'
      redirect_to secret_codes_path
    else
      render 'new'
    end
  end

  private

  def secret_params
    params.require(:code).permit(:code_number)
  end

end
