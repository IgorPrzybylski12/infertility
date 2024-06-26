class DisordersController < ApplicationController
  before_action :set_disorder, only: %i[ show edit update destroy ]

  # GET /disorders or /disorders.json
  def index
    @disorders = Disorder.all

  end

  # GET /disorders/1 or /disorders/1.json
  def show
    @poly_vx_ds = PolyVxD.all
    @poly_variants = PolyVariant.all
    @scoring_machines = ScoringMachine.all
  end

  # GET /disorders/new
  def new
    @disorder = Disorder.new
  end

  # GET /disorders/1/edit
  def edit
  end

  # POST /disorders or /disorders.json
  def create
    @disorder = Disorder.new(disorder_params)

    if params[:disorder][:male] == "1" && params[:disorder][:female] == "1"
      @disorder.gender = "male and female"
    elsif params[:disorder][:male] == "1"
      @disorder.gender = "male"
    elsif params[:disorder][:female] == "1"
      @disorder.gender = "female"
    else
      @disorder.gender = nil 
    end

    # Save the record
    respond_to do |format|
      if @disorder.save
        format.html { redirect_to disorder_url(@disorder), notice: "Disorder was successfully created." }
        format.json { render :show, status: :created, location: @disorder }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @disorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disorders/1 or /disorders/1.json
  def update
    @disorder = Disorder.new(disorder_params)
    
    if params[:disorder][:male] == "1" && params[:disorder][:female] == "1"
      @disorder.gender = "male and female"
    elsif params[:disorder][:male] == "1"
      @disorder.gender = "male"
    elsif params[:disorder][:female] == "1"
      @disorder.gender = "female"
    else
      @disorder.gender = nil # Handle the case when neither is selected
    end
    
    respond_to do |format|
      if @disorder.update(disorder_params)
        format.html { redirect_to disorder_url(@disorder), notice: "Disorder was successfully updated." }
        format.json { render :show, status: :ok, location: @disorder }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @disorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disorders/1 or /disorders/1.json
  def destroy
    @disorder.destroy!

    respond_to do |format|
      format.html { redirect_to disorders_url, notice: "Disorder was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disorder
      @disorder = Disorder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def disorder_params
      params.require(:disorder).permit(:name, :description, :gender)
    end
end
