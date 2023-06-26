class CompanySizesController < ApplicationController
  before_action :set_company_size, only: %i[ show edit update destroy ]

  # GET /company_sizes or /company_sizes.json
  def index
    @company_sizes = CompanySize.all
  end

  # GET /company_sizes/1 or /company_sizes/1.json
  def show
  end

  # GET /company_sizes/new
  def new
    @company_size = CompanySize.new
  end

  # GET /company_sizes/1/edit
  def edit
  end

  # POST /company_sizes or /company_sizes.json
  def create
    @company_size = CompanySize.new(company_size_params)

    respond_to do |format|
      if @company_size.save
        format.html { redirect_to company_size_url(@company_size), notice: "Company size was successfully created." }
        format.json { render :show, status: :created, location: @company_size }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @company_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_sizes/1 or /company_sizes/1.json
  def update
    respond_to do |format|
      if @company_size.update(company_size_params)
        format.html { redirect_to company_size_url(@company_size), notice: "Company size was successfully updated." }
        format.json { render :show, status: :ok, location: @company_size }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @company_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_sizes/1 or /company_sizes/1.json
  def destroy
    @company_size.destroy

    respond_to do |format|
      format.html { redirect_to company_sizes_url, notice: "Company size was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_size
      @company_size = CompanySize.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_size_params
      params.require(:company_size).permit(:size)
    end
end
