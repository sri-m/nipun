class StudentFormsController < ApplicationController
  before_action :set_student_form, only: [:show, :edit, :update, :destroy]

  # GET /student_forms
  # GET /student_forms.json
  def index
    @student_forms = StudentForm.all
  end

  # GET /student_forms/1
  # GET /student_forms/1.json
  def show
  end

  # GET /student_forms/new
  def new
    @student_form = StudentForm.new
  end

  # GET /student_forms/1/edit
  def edit
  end

  # POST /student_forms
  # POST /student_forms.json
  def create
    @student_form = StudentForm.new(student_form_params)

    respond_to do |format|
      if @student_form.save
        format.html { redirect_to @student_form, notice: 'Student form was successfully created.' }
        format.json { render :show, status: :created, location: @student_form }
      else
        format.html { render :new }
        format.json { render json: @student_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_forms/1
  # PATCH/PUT /student_forms/1.json
  def update
    respond_to do |format|
      if @student_form.update(student_form_params)
        format.html { redirect_to @student_form, notice: 'Student form was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_form }
      else
        format.html { render :edit }
        format.json { render json: @student_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_forms/1
  # DELETE /student_forms/1.json
  def destroy
    @student_form.destroy
    respond_to do |format|
      format.html { redirect_to student_forms_url, notice: 'Student form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_form
      @student_form = StudentForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_form_params
      params.require(:student_form).permit(:name, :email, :cell, :gender, :group, :options, :subject)
    end
end
