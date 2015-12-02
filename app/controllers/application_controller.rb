class ApplicationController < ActionController::Base
  before_action :set_factbox, only: [:update_factbox]
  protect_from_forgery with: :exception

  def index
  	@factbox = Factbox.all.order("id ASC")
  end

  def update_factbox
    respond_to do |format|
      if @factbox.update(factbox_params)
        format.html { redirect_to :index, notice: 'Factbox was successfully updated.' }
        format.json { respond_with_bip(@factbox) }
      else
        format.html { render :edit }
        format.json { render json: @factbox.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_factbox
      @factbox = Factbox.find(params[:id])
    end

    def factbox_params
      params.require(:factbox).permit(:title,:number,:unit,:description)
    end

end
