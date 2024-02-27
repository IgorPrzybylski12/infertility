class PolyVariantsController < ApplicationController
  before_action :set_poly_variant, only: %i[ show edit update destroy ]

  # GET /poly_variants or /poly_variants.json
  def index
    @poly_variants = PolyVariant.all
  end

  # GET /poly_variants/1 or /poly_variants/1.json
  def show
    @genes = Gene.all
    @gene_products =GeneProduct.all
    @proteins = Protein.all
    @miRNAs = MiRna.all
    @polyVxDs = PolyVxD.all
    @disorders = Disorder.all
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
      params.require(:poly_variant).permit(:name, :polyFrequency)
    end
end
