class DynamicFormsController < ApplicationController
  before_action :set_dynamic_form, only: %i[ show edit update destroy ]

  # GET /dynamic_forms or /dynamic_forms.json
  def index
    @dynamic_forms = DynamicForm.all
  end

  # GET /dynamic_forms/1 or /dynamic_forms/1.json
  def show
  end

  # GET /dynamic_forms/new
  def new
    @dynamic_form = DynamicForm.new
    @dynamic_form.dynamic_columns.build
  end

  # GET /dynamic_forms/1/edit
  def edit
  end

  # POST /dynamic_forms or /dynamic_forms.json
  def create
    puts '='*100
    puts dynamic_form_params
    @dynamic_form = DynamicForm.new(dynamic_form_params)

    respond_to do |format|
      if @dynamic_form.save
        format.html { redirect_to @dynamic_form, notice: "Dynamic form was successfully created." }
        format.json { render :show, status: :created, location: @dynamic_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dynamic_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dynamic_forms/1 or /dynamic_forms/1.json
  def update
    respond_to do |format|
      if @dynamic_form.update(dynamic_form_params)
        format.html { redirect_to @dynamic_form, notice: "Dynamic form was successfully updated." }
        format.json { render :show, status: :ok, location: @dynamic_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dynamic_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dynamic_forms/1 or /dynamic_forms/1.json
  def destroy
    @dynamic_form.destroy!

    respond_to do |format|
      format.html { redirect_to dynamic_forms_path, status: :see_other, notice: "Dynamic form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dynamic_form
      @dynamic_form = DynamicForm.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def dynamic_form_params
      params.require(:dynamic_form).permit(:name, :description, dynamic_columns_attributes: [:name, :column_type, :required, :default_value])
    end
end
