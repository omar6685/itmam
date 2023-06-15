class CompanyStatusesController < ApplicationController
  before_action :set_company_status, only: %i[ show edit update destroy ]

  # GET /company_statuses or /company_statuses.json
  def index
    @company_statuses = CompanyStatus.all
  end

  # GET /company_statuses/1 or /company_statuses/1.json
  def show
  end

  # GET /company_statuses/new
  def new
    @company_status = CompanyStatus.new
  end

  # GET /company_statuses/1/edit
  def edit
  end

  # POST /company_statuses or /company_statuses.json
  def create
    @company_status = CompanyStatus.new(company_status_params)

    respond_to do |format|
      if @company_status.save
        format.html { redirect_to company_status_url(@company_status), notice: "Company status was successfully created." }
        format.json { render :show, status: :created, location: @company_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @company_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_statuses/1 or /company_statuses/1.json
  def update
    respond_to do |format|
      if @company_status.update(company_status_params)
        format.html { redirect_to company_status_url(@company_status), notice: "Company status was successfully updated." }
        format.json { render :show, status: :ok, location: @company_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @company_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_statuses/1 or /company_statuses/1.json
  def destroy
    @company_status.destroy

    respond_to do |format|
      format.html { redirect_to company_statuses_url, notice: "Company status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_status
      @company_status = CompanyStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_status_params
      params.require(:company_status).permit(:status)
    end
end
