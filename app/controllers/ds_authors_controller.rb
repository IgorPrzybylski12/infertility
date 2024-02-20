class DsAuthorsController < ApplicationController
  before_action :set_ds_author, only: %i[ show edit update destroy ]

  # GET /ds_authors or /ds_authors.json
  def index
    @ds_authors = DsAuthor.all
  end

  # GET /ds_authors/1 or /ds_authors/1.json
  def show
  end

  # GET /ds_authors/new
  def new
    @ds_author = DsAuthor.new
  end

  # GET /ds_authors/1/edit
  def edit
  end

  # POST /ds_authors or /ds_authors.json
  def create
    @ds_author = DsAuthor.new(ds_author_params)

    respond_to do |format|
      if @ds_author.save
        format.html { redirect_to ds_author_url(@ds_author), notice: "Ds author was successfully created." }
        format.json { render :show, status: :created, location: @ds_author }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ds_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ds_authors/1 or /ds_authors/1.json
  def update
    respond_to do |format|
      if @ds_author.update(ds_author_params)
        format.html { redirect_to ds_author_url(@ds_author), notice: "Ds author was successfully updated." }
        format.json { render :show, status: :ok, location: @ds_author }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ds_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ds_authors/1 or /ds_authors/1.json
  def destroy
    @ds_author.destroy!

    respond_to do |format|
      format.html { redirect_to ds_authors_url, notice: "Ds author was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ds_author
      @ds_author = DsAuthor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ds_author_params
      params.require(:ds_author).permit(:fullname)
    end
end
