class AndroidNgBayansController < ApplicationController
  before_action :set_android_ng_bayan, only: [:show, :edit, :update, :destroy]

  # GET /android_ng_bayans
  # GET /android_ng_bayans.json
  def index
    @android_ng_bayans = AndroidNgBayan.all
  end

  # GET /android_ng_bayans/1
  # GET /android_ng_bayans/1.json
  def show
  end

  # GET /android_ng_bayans/new
  def new
    @android_ng_bayan = AndroidNgBayan.new
  end

  # GET /android_ng_bayans/1/edit
  def edit
  end

  # POST /android_ng_bayans
  # POST /android_ng_bayans.json
  def create
    @android_ng_bayan = AndroidNgBayan.new(android_ng_bayan_params)

    respond_to do |format|
      if @android_ng_bayan.save
        format.html { redirect_to @android_ng_bayan, notice: 'Android ng bayan was successfully created.' }
        format.json { render :show, status: :created, location: @android_ng_bayan }
      else
        format.html { render :new }
        format.json { render json: @android_ng_bayan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /android_ng_bayans/1
  # PATCH/PUT /android_ng_bayans/1.json
  def update
    respond_to do |format|
      if @android_ng_bayan.update(android_ng_bayan_params)
        format.html { redirect_to @android_ng_bayan, notice: 'Android ng bayan was successfully updated.' }
        format.json { render :show, status: :ok, location: @android_ng_bayan }
      else
        format.html { render :edit }
        format.json { render json: @android_ng_bayan.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def sold
      @android_ng_bayan = AndroidNgBayan.find(params[:id])
      @android_ng_bayan.Stock = @android_ng_bayan.Stock-1
      @android_ng_bayan.save()
      redirect_to "/android_ng_bayans"
  end
  
  
  # DELETE /android_ng_bayans/1
  # DELETE /android_ng_bayans/1.json
  def destroy
    @android_ng_bayan.destroy
    respond_to do |format|
      format.html { redirect_to android_ng_bayans_url, notice: 'Android ng bayan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_android_ng_bayan
      @android_ng_bayan = AndroidNgBayan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def android_ng_bayan_params
      params.require(:android_ng_bayan).permit(:Name, :Brand, :Year_Released, :Mpixel, :Internal_Storage, :Size_of_Screen, :Operating_System, :Stock)
    end
end
