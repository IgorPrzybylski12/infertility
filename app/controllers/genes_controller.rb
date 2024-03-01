class GenesController < ApplicationController
  before_action :set_gene, only: %i[ show edit update destroy ]

  # GET /genes or /genes.json
  def index
    @genes = Gene.all
  end

  # GET /genes/1 or /genes/1.json
  def show
    @gene_products = GeneProduct.all
    @scores = Score.all
  end

  # GET /genes/new
  def new
    @gene = Gene.new
  end

  # GET /genes/1/edit
  def edit
  end 

  # POST /genes or /genes.json
  def create
    @gene = Gene.new(gene_params)

    respond_to do |format|
      if @gene.save
        format.html { redirect_to gene_url(@gene), notice: "Gene was successfully created." }
        format.json { render :show, status: :created, location: @gene }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genes/1 or /genes/1.json
  def update
    respond_to do |format|
      if @gene.update(gene_params)
        format.html { redirect_to gene_url(@gene), notice: "Gene was successfully updated." }
        format.json { render :show, status: :ok, location: @gene }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genes/1 or /genes/1.json
  def destroy
    @gene.destroy!

    respond_to do |format|
      format.html { redirect_to genes_url, notice: "Gene was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gene
      @gene = Gene.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gene_params
      params.require(:gene).permit(:name, :description, :chromosome_number, :position, :loalization, :poly_variant_id)
    end
end
