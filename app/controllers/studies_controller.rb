class StudiesController < ApplicationController
  before_action :set_study, only: %i[ show edit update destroy ]

  # GET /studies or /studies.json
  def index
    @studies = Study.all
  end

  # GET /studies/1 or /studies/1.json
  def show
    @real_employees = @study.foreigner.to_i + @study.saudi.to_i


    @all_employees = @study.special_foreigner.to_f + @study.special_saudis.to_f


    @percentage_special_saudis = (@study.special_saudis.to_f / @all_employees) * 100

    @nitak_tables_count = NitakTable.joins(:activity_table)
    .where(activity_tables: { activity: @study.activity_tables.first.activity })
    .count


    @nitak_tables = NitakTable.joins(:activity_table)
    .where(activity_tables: { activity: @study.activity_tables.first.activity })


    @company_status_ids = NitakTable.joins(:activity_table)
    .where(activity_tables: { activity: @study.activity_tables.first.activity })
    .pluck(:company_status_id)
    .uniq


    @company_statuses = CompanyStatus.where(id: @company_status_ids).pluck(:status)


    study_statuses = {}

    @nitak_tables.each do |nitak_table|
      study_statuses[nitak_table.id] = {
        yearly_value: nitak_table.yearly_value,
        fixed_value: nitak_table.fixed_value
      }
    end

    # Pass the variables to the view
    @study_statuses = study_statuses


  end

  # GET /studies/new
  def new
    @study = Study.new
    @study.activity_tables.build
  end

  # GET /studies/1/edit
  def edit
  end

  # POST /studies or /studies.json
  def create
    @study = Study.new(study_params)

    respond_to do |format|
      if @study.save
        format.html { redirect_to study_url(@study), notice: "Study was successfully created." }
        format.json { render :show, status: :created, location: @study }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studies/1 or /studies/1.json
  def update
    respond_to do |format|
      if @study.update(study_params)
        format.html { redirect_to study_url(@study), notice: "Study was successfully updated." }
        format.json { render :show, status: :ok, location: @study }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studies/1 or /studies/1.json
  def destroy
    @study.destroy

    respond_to do |format|
      format.html { redirect_to studies_url, notice: "Study was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study
      @study = Study.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def study_params
      params.require(:study).permit(:branch, :company_size_id, :foreigner, :saudi, :ajier, :special_foreigner, :special_saudis, :localization_rate, :saudi_four, :saudi_three_four, :saudi_three, :visa, :saudi_disable, :adaptation, :saudi_jailed, :saudi_student, :saudi_online, :saudi_player, :saudi_loan_player, :foreigner_like_saudi, :foreigner_like_foreigner, :specialy_foreigner, :tribe_saudi, :gulf_citizen, :owner, :red_week, :uncounted_saudi, activity_tables_attributes: [:id, :activity, :active, :_destroy])
    end
end
