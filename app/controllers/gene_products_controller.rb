class GeneProductsController < ApplicationController
  before_action :set_gene_product, only: %i[ show edit update destroy ]

  # GET /gene_products or /gene_products.json
  def index
    @gene_products = GeneProduct.all
  end

  # GET /gene_products/1 or /gene_products/1.json
  def show
  end

  # GET /gene_products/new
  def new
    @gene_product = GeneProduct.new
  end

  # GET /gene_products/1/edit
  def edit
  end

  # POST /gene_products or /gene_products.json
  def create
    @gene_product = GeneProduct.new(gene_product_params)

    respond_to do |format|
      if @gene_product.save
        format.html { redirect_to gene_product_url(@gene_product), notice: "Gene product was successfully created." }
        format.json { render :show, status: :created, location: @gene_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gene_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gene_products/1 or /gene_products/1.json
  def update
    respond_to do |format|
      if @gene_product.update(gene_product_params)
        format.html { redirect_to gene_product_url(@gene_product), notice: "Gene product was successfully updated." }
        format.json { render :show, status: :ok, location: @gene_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gene_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gene_products/1 or /gene_products/1.json
  def destroy
    @gene_product.destroy!

    respond_to do |format|
      format.html { redirect_to gene_products_url, notice: "Gene product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gene_product
      @gene_product = GeneProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gene_product_params
      params.require(:gene_product).permit(:name)
    end
end
