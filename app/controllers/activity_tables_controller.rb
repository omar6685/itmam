class ActivityTablesController < ApplicationController
  before_action :set_activity_table, only: %i[ show edit update destroy ]

  # GET /activity_tables or /activity_tables.json
  def index
    @activity_tables = ActivityTable.all
  end

  # GET /activity_tables/1 or /activity_tables/1.json
  def show
  end

  # GET /activity_tables/new
  def new
    @activity_table = ActivityTable.new
  end

  # GET /activity_tables/1/edit
  def edit
  end

  # POST /activity_tables or /activity_tables.json
  def create
    @activity_table = ActivityTable.new(activity_table_params)

    respond_to do |format|
      if @activity_table.save
        format.html { redirect_to activity_table_url(@activity_table), notice: "Activity table was successfully created." }
        format.json { render :show, status: :created, location: @activity_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @activity_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_tables/1 or /activity_tables/1.json
  def update
    respond_to do |format|
      if @activity_table.update(activity_table_params)
        format.html { redirect_to activity_table_url(@activity_table), notice: "Activity table was successfully updated." }
        format.json { render :show, status: :ok, location: @activity_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @activity_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_tables/1 or /activity_tables/1.json
  def destroy
    @activity_table.destroy

    respond_to do |format|
      format.html { redirect_to activity_tables_url, notice: "Activity table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_table
      @activity_table = ActivityTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_table_params
      params.require(:activity_table).permit(:activity, :active, :study_id)
    end
end
