class BillsController < ApplicationController

  before_action :set_client, except: [:destroy]
  before_action :set_tariffa, only: [:new, :create, :show, :index]

  def new
  @bill = Bill.new
  @tarif = TariffaOrarium.last.tariffa
  end

  def create
    # we build the status update using a method of the relation
    @bill = @client.bills.build(bill_params)
    respond_to do |format|
      if @bill.save
        format.html { redirect_to @client, notice: 'Fattura aggiunta correttamente.' }
      else
        format.html { render :new }
      end
    end
  end


  def destroy
    @bill = Bill.find params[:id]

    respond_to do |format|
      if @bill.destroy
        format.html { redirect_to @bill.client,
                      notice: 'Fattura correttamente eliminata.'}
      else
        format.html { redirect_to @bill.client,
                      alert: 'Errore eliminazione fattura.'}
      end
    end
   end

  

   def index
     @bills = @client.bills
   end

   def show
     @bill=Bill.find params[:id]
   end

  private

  def set_client
    @client = Client.find params[:client_id]
  end

  def set_tariffa
     @tariffa_oraria = TariffaOrarium.last
  end

  def bill_params
    params.require(:bill).permit(:voce, :ore_eff, :tariffa)
  end

end
