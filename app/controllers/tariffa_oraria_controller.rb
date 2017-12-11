class TariffaOrariaController < ApplicationController
  before_action :set_tariffa_orarium, only: [:show, :edit, :update, :destroy]
  helper_method :tare
    # GET /tariffa_oraria
  # GET /tariffa_oraria.json
  def index
    @tariffa_oraria = TariffaOrarium.all
  end

  # GET /tariffa_oraria/1
  # GET /tariffa_oraria/1.json
  def show
  end

  # GET /tariffa_oraria/new
#  def new
#    @tariffa_orarium = TariffaOrarium.new
#  end


  def edit
  end



  # PATCH/PUT /tariffa_oraria/1
  # PATCH/PUT /tariffa_oraria/1.json
  def update
    respond_to do |format|
      if @tariffa_orarium.update(tariffa_orarium_params)
        format.html { redirect_to tariffa_oraria_path, notice: 'Tariffa oraria aggiornata correttamente.' }
        format.json { render :show, status: :ok, location: tariffa_oraria_path }
      else
        format.html { render :edit }
        format.json { render json: @tariffa_orarium.errors, status: :unprocessable_entity }
      end
    end
  end



# For diagnostic purposes only
#-------------------------------
# DELETE /tariffa_oraria/1
# DELETE /tariffa_oraria/1.json
#  def destroy
#    @tariffa_orarium.destroy
#    respond_to do |format|
#      format.html { redirect_to tariffa_oraria_url, notice: 'Tariffa orarium was successfully destroyed.' }
#      format.json { head :no_content }
#    end
#  end
# POST /tariffa_oraria
# POST /tariffa_oraria.json
#  def create
#    @tariffa_orarium = TariffaOrarium.new(tariffa_orarium_params)
#
#    respond_to do |format|
#      if @tariffa_orarium.save
#        format.html { redirect_to @tariffa_orarium, notice: 'Tariffa orarium was successfully created.' }
#        format.json { render :show, status: :created, location: @tariffa_orarium }
#      else
#        format.html { render :new }
#        format.json { render json: @tariffa_orarium.errors, status: :unprocessable_entity }
#      end
#    end
#  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tariffa_orarium
      @tariffa_orarium = TariffaOrarium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tariffa_orarium_params
      params.require(:tariffa_orarium).permit(:tariffa)
    end
end
