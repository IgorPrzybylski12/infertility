class PolyVariantsController < ApplicationController
  before_action :set_poly_variant, only: %i[ show edit update destroy ]

  # GET /poly_variants or /poly_variants.json
  def index
    @poly_vx_ds = PolyVxD.all
    @disorders = Disorder.all
    @scoring_machines = ScoringMachine.all
    genes = Gene.all


    category = params[:category]
    if category.present?
      grouped_options = [
          ["Genes", Gene.attribute_names.map { |attr| ["Gene #{attr.humanize}", "genes_#{attr}"] }],
          ["Gene Products", GeneProduct.attribute_names.map { |attr| ["Gene Product #{attr.humanize}", "gene_products_#{attr}"] }],
          ["Poly Variants", PolyVariant.attribute_names.map { |attr| ["Poly Variant #{attr.humanize}", "poly_variants_#{attr}"] }],
          ["Disorders", Disorder.attribute_names.map { |attr| ["Disorder #{attr.humanize}", "disorders_#{attr}"] }]
        ]
      category = params[:category]
      grouped_options.each do |group, options|
        options.each do |option|
          if option.last == category
            group = group.gsub(/[[:space:]]/, '_')
            #group = 'genes_' + group
            puts "\e[31mWybrany element należy do grupy: #{}\e[0m"
            @q = PolyVariant.joins(group.downcase.to_sym).where("#{group.pluralize.downcase}.name": params[:search_text]).ransack(params[:q])
            @poly_variants = @q.result(distinct: true)
          end
        end
      end
    else
      @poly_variants = PolyVariant.all
    end
  end

    # category = params[:category]
    # if category.present?
    #   if category == "name"
    #     @q = PolyVariant.ransack(params[:q])
    #     @q = @q.result(distinct: true).ransack({name_cont: params[:search_text]})
    #     @poly_variants = @q.result(distinct: true)
    #   elsif category == "genes_name"
    #     @q = PolyVariant.joins(:genes).where(genes: { name: params[:search_text] }).ransack(params[:q])
    #     @poly_variants = @q.result(distinct: true)
    #   end


      # elsif category == "gene"
      #   ransack({gene_name_cont: params[:search_name, description_cont: params[:search_description] })
      # elsif category == "disorder"
      #   ransack({disorder_name_cont: params[:search_name, disorderdescription_cont: params[:search_description] })
      # end
   



  def add_new_search_option
    # logic that will determine which partial to display
    chosen_partial  = if params[:category] == 'Option 1'
                        'partial_to_display'
                      elsif params[:category] == 'Option 2'
                        'another_partial_to_display'
                      else
                        'placeholder_text'
                      end

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.update(
          :div_to_replace, partial: chosen_partial
        )
      end
    end
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
end
