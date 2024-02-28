class PolyVxDsController < ApplicationController
  before_action :set_poly_vx_d, only: %i[ show edit update destroy ]

  # GET /poly_vx_ds or /poly_vx_ds.json
  def index
    @poly_vx_ds = PolyVxD.all
  end

  # GET /poly_vx_ds/1 or /poly_vx_ds/1.json
  def show
    @disorders = Disorder.all
  end

  # GET /poly_vx_ds/new
  def new
    @poly_vx_d = PolyVxD.new
  end

  # GET /poly_vx_ds/1/edit
  def edit
  end

  # POST /poly_vx_ds or /poly_vx_ds.json
  def create
    @poly_vx_d = PolyVxD.new(poly_vx_d_params)

    respond_to do |format|
      if @poly_vx_d.save
        format.html { redirect_to poly_vx_d_url(@poly_vx_d), notice: "Connection was successfully created." }
        format.json { render :show, status: :created, location: @poly_vx_d }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poly_vx_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poly_vx_ds/1 or /poly_vx_ds/1.json
  def update
    respond_to do |format|
      if @poly_vx_d.update(poly_vx_d_params)
        format.html { redirect_to poly_vx_d_url(@poly_vx_d), notice: "Connection was successfully updated." }
        format.json { render :show, status: :ok, location: @poly_vx_d }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poly_vx_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poly_vx_ds/1 or /poly_vx_ds/1.json
  def destroy
    @poly_vx_d.destroy!

    respond_to do |format|
      format.html { redirect_to poly_vx_ds_url, notice: "Connection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poly_vx_d
      @poly_vx_d = PolyVxD.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poly_vx_d_params
      params.require(:poly_vx_d).permit(:score, :disorder_id, :poly_variant_id, :scoring_machine_id)
    end
end