class ReportsController < ApplicationController

  before_filter :find_patient
  before_filter :find_user, :only => [:edit, :update]

  # GET /reports
  # GET /reports.json
  def index
    @reports = Report.where(user_id: current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reports }
    end
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
    @report = Report.find(params[:id])
    if @report
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @report }
      end
    else
      render action: "new"
    end
  end

  # GET /reports/new
  # GET /reports/new.json
  def new
    @report = Report.new
    @report.build_esclerosi
    @report.build_displasium
    @report.build_tumor
    @report.build_malformacion
    @report.build_conclusion

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @report }
    end
  end

  # GET /reports/1/edit
  def edit
    @report = Report.find(params[:id])

  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(params[:report])

    respond_to do |format|
      if @report.save
        format.html { redirect_to patient_report_path(@patient, @report), notice: 'Report was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /reports/1
  # PUT /reports/1.json
  def update
    @report = Report.find(params[:id])

    respond_to do |format|
      if @report.update_attributes(params[:report])
        format.html { redirect_to patient_report_path(@patient, @report, equipmet: @report[:equipment]), notice: 'Report was successfully updated.' }
        #format.json { head :no_content }
      else
        format.html { render action: "edit" }
        #format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report = Report.find(params[:id])
    @report.destroy

    respond_to do |format|
      format.html { redirect_to patient_reports_path }
      # format.json { head :no_content }
    end
  end

  private

  def find_patient
    @patient = Patient.find(params[:patient_id])
  end

  def find_user
    @user = User.where(id: current_user.id)
  end
end
