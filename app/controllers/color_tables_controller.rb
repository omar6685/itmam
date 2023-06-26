class ColorTablesController < ApplicationController
  before_action :set_color_table, only: %i[ show edit update destroy ]

  # GET /color_tables or /color_tables.json
  def index
    @color_tables = ColorTable.all
  end

  # GET /color_tables/1 or /color_tables/1.json
  def show
  end

  # GET /color_tables/new
  def new
    @color_table = ColorTable.new
  end

  # GET /color_tables/1/edit
  def edit
  end

  # POST /color_tables or /color_tables.json
  def create
    @color_table = ColorTable.new(color_table_params)

    respond_to do |format|
      if @color_table.save
        format.html { redirect_to color_table_url(@color_table), notice: "Color table was successfully created." }
        format.json { render :show, status: :created, location: @color_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @color_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /color_tables/1 or /color_tables/1.json
  def update
    respond_to do |format|
      if @color_table.update(color_table_params)
        format.html { redirect_to color_table_url(@color_table), notice: "Color table was successfully updated." }
        format.json { render :show, status: :ok, location: @color_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @color_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /color_tables/1 or /color_tables/1.json
  def destroy
    @color_table.destroy

    respond_to do |format|
      format.html { redirect_to color_tables_url, notice: "Color table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_color_table
      @color_table = ColorTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def color_table_params
      params.require(:color_table).permit(:color)
    end
end
