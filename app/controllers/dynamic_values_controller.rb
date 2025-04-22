class DynamicValuesController < ApplicationController
  before_action :set_dynamic_value, only: %i[ show edit update destroy ]

  # GET /dynamic_values or /dynamic_values.json
  def index
    @dynamic_values = DynamicValue.all
  end

  # GET /dynamic_values/1 or /dynamic_values/1.json
  def show
  end

  # GET /dynamic_values/new
  def new
    @dynamic_value = DynamicValue.new
  end

  # GET /dynamic_values/1/edit
  def edit
  end

  # POST /dynamic_values or /dynamic_values.json
  def create
    @dynamic_value = DynamicValue.new(dynamic_value_params)

    respond_to do |format|
      if @dynamic_value.save
        format.html { redirect_to @dynamic_value, notice: "Dynamic value was successfully created." }
        format.json { render :show, status: :created, location: @dynamic_value }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dynamic_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dynamic_values/1 or /dynamic_values/1.json
  def update
    respond_to do |format|
      if @dynamic_value.update(dynamic_value_params)
        format.html { redirect_to @dynamic_value, notice: "Dynamic value was successfully updated." }
        format.json { render :show, status: :ok, location: @dynamic_value }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dynamic_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dynamic_values/1 or /dynamic_values/1.json
  def destroy
    @dynamic_value.destroy!

    respond_to do |format|
      format.html { redirect_to dynamic_values_path, status: :see_other, notice: "Dynamic value was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dynamic_value
      @dynamic_value = DynamicValue.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def dynamic_value_params
      params.expect(dynamic_value: [ :dynamic_form_id, :field_value ])
    end
end
