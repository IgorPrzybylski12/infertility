class MiRnasController < ApplicationController
  before_action :set_mi_rna, only: %i[ show edit update destroy ]

  # GET /mi_rnas or /mi_rnas.json
  def index
    @mi_rnas = MiRna.all
  end

  # GET /mi_rnas/1 or /mi_rnas/1.json
  def show
  end

  # GET /mi_rnas/new
  def new
    @mi_rna = MiRna.new
  end

  # GET /mi_rnas/1/edit
  def edit
  end

  # POST /mi_rnas or /mi_rnas.json
  def create
    @mi_rna = MiRna.new(mi_rna_params)

    respond_to do |format|
      if @mi_rna.save
        format.html { redirect_to mi_rna_url(@mi_rna), notice: "Mi rna was successfully created." }
        format.json { render :show, status: :created, location: @mi_rna }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mi_rna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mi_rnas/1 or /mi_rnas/1.json
  def update
    respond_to do |format|
      if @mi_rna.update(mi_rna_params)
        format.html { redirect_to mi_rna_url(@mi_rna), notice: "Mi rna was successfully updated." }
        format.json { render :show, status: :ok, location: @mi_rna }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mi_rna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mi_rnas/1 or /mi_rnas/1.json
  def destroy
    @mi_rna.destroy!

    respond_to do |format|
      format.html { redirect_to mi_rnas_url, notice: "Mi rna was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mi_rna
      @mi_rna = MiRna.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mi_rna_params
      params.require(:mi_rna).permit(:name, :description)
    end
end
