class ScoringMachinesController < ApplicationController
  before_action :set_scoring_machine, only: %i[ show edit update destroy ]

  # GET /scoring_machines or /scoring_machines.json
  def index
    @scoring_machines = ScoringMachine.all
  end

  # GET /scoring_machines/1 or /scoring_machines/1.json
  def show
  end

  # GET /scoring_machines/new
  def new
    @scoring_machine = ScoringMachine.new
  end

  # GET /scoring_machines/1/edit
  def edit
  end

  # POST /scoring_machines or /scoring_machines.json
  def create
    @scoring_machine = ScoringMachine.new(scoring_machine_params)

    respond_to do |format|
      if @scoring_machine.save
        format.html { redirect_to scoring_machine_url(@scoring_machine), notice: "Scoring machine was successfully created." }
        format.json { render :show, status: :created, location: @scoring_machine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scoring_machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scoring_machines/1 or /scoring_machines/1.json
  def update
    respond_to do |format|
      if @scoring_machine.update(scoring_machine_params)
        format.html { redirect_to scoring_machine_url(@scoring_machine), notice: "Scoring machine was successfully updated." }
        format.json { render :show, status: :ok, location: @scoring_machine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scoring_machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scoring_machines/1 or /scoring_machines/1.json
  def destroy
    @scoring_machine.destroy!

    respond_to do |format|
      format.html { redirect_to scoring_machines_url, notice: "Scoring machine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scoring_machine
      @scoring_machine = ScoringMachine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scoring_machine_params
      params.require(:scoring_machine).permit(:name, :numericValue, :perceptualValue)
    end
end
