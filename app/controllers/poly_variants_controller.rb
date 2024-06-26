class PolyVariantsController < ApplicationController
  include PolyVariantsHelper
  before_action :set_poly_variant, only: %i[ show edit update destroy ]

  # GET /poly_variants or /poly_variants.json
  def index
    @poly_vx_ds = PolyVxD.all
    @disorders = Disorder.all
    @scoring_machines = ScoringMachine.all
    genes = Gene.all
    gene_products = GeneProduct.all
    mi_rnas = MiRna.all
    proteins = Protein.all

    @search = ransack_params
    @poly_variants  = ransack_result
  end
  
  def advanced_search
    @search = ransack_params
    @search.build_grouping unless @search.groupings.any?
    @poly_variants  = ransack_result
  end

  
  def hello_test
    Rails.logger.debug("HELLOOOOOOOO")
    respond_to do |format|
      format.turbo_stream
    end
  end

  # GET /poly_variants/1 or /poly_variants/1.json
  def show
    @genes = Gene.all
    @poly_vx_ds = PolyVxD.all
    @disorders = Disorder.all
    @gene_products = GeneProduct.all
    @scoring_machines = ScoringMachine.all
    @scores = Score.all
    @data_sources = DataSource.all
    @proteins = Protein.all
    @miRNAs = MiRna.all
    @ds_authors = DsAuthor.all
  end

  # GET /poly_variants/new
  def new
    @poly_variant = PolyVariant.new
  end

  # GET /poly_variants/1/edit
  def edit
  end

  # POST /poly_variants or /poly_variants.json
  def create
    @poly_variant = PolyVariant.new(poly_variant_params)

    respond_to do |format|
      if @poly_variant.save
        format.html { redirect_to poly_variant_url(@poly_variant), notice: "Poly variant was successfully created." }
        format.json { render :show, status: :created, location: @poly_variant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poly_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poly_variants/1 or /poly_variants/1.json
  def update
    respond_to do |format|
      if @poly_variant.update(poly_variant_params)
        format.html { redirect_to poly_variant_url(@poly_variant), notice: "Poly variant was successfully updated." }
        format.json { render :show, status: :ok, location: @poly_variant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poly_variant.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # DELETE /poly_variants/1 or /poly_variants/1.json
  def destroy
    @poly_variant.destroy!
  

    respond_to do |format|
      format.html { redirect_to poly_variants_url, notice: "Poly variant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poly_variant
      @poly_variant = PolyVariant.find(params[:id])

    end

    # Only allow a list of trusted parameters through.
    def poly_variant_params
      params.require(:poly_variant).permit(:name, :poly_frequency)
    end

    def ransack_params
      PolyVariant.includes(:genes).ransack(params[:q])
    end

    def ransack_result
      @search.result(distinct: user_wants_distinct_results?)
    end
  end
