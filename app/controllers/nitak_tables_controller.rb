class NitakTablesController < ApplicationController
  before_action :set_nitak_table, only: %i[ show edit update destroy ]

  # GET /nitak_tables or /nitak_tables.json
  def index
    @nitak_tables = NitakTable.all
  end

  # GET /nitak_tables/1 or /nitak_tables/1.json
  def show
  end

  # GET /nitak_tables/new
  def new
    @nitak_table = NitakTable.new
  end

  # GET /nitak_tables/1/edit
  def edit
  end

  # POST /nitak_tables or /nitak_tables.json
  def create
    @nitak_table = NitakTable.new(nitak_table_params)

    respond_to do |format|
      if @nitak_table.save
        format.html { redirect_to nitak_table_url(@nitak_table), notice: "Nitak table was successfully created." }
        format.json { render :show, status: :created, location: @nitak_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nitak_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nitak_tables/1 or /nitak_tables/1.json
  def update
    respond_to do |format|
      if @nitak_table.update(nitak_table_params)
        format.html { redirect_to nitak_table_url(@nitak_table), notice: "Nitak table was successfully updated." }
        format.json { render :show, status: :ok, location: @nitak_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nitak_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nitak_tables/1 or /nitak_tables/1.json
  def destroy
    @nitak_table.destroy

    respond_to do |format|
      format.html { redirect_to nitak_tables_url, notice: "Nitak table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nitak_table
      @nitak_table = NitakTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nitak_table_params
      params.require(:nitak_table).permit(:activity_table_id, :company_status_id, :fixed_value, :yearly_value)
    end
end
