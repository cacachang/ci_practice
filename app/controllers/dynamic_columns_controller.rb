class DynamicColumnsController < ApplicationController
  before_action :set_dynamic_column, only: %i[ show edit update destroy ]

  # GET /dynamic_columns or /dynamic_columns.json
  def index
    @dynamic_columns = DynamicColumn.all
  end

  # GET /dynamic_columns/1 or /dynamic_columns/1.json
  def show
  end

  # GET /dynamic_columns/new
  def new
    @dynamic_column = DynamicColumn.new
  end

  # GET /dynamic_columns/1/edit
  def edit
  end

  # POST /dynamic_columns or /dynamic_columns.json
  def create
    @dynamic_column = DynamicColumn.new(dynamic_column_params)

    respond_to do |format|
      if @dynamic_column.save
        format.html { redirect_to @dynamic_column, notice: "Dynamic column was successfully created." }
        format.json { render :show, status: :created, location: @dynamic_column }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dynamic_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dynamic_columns/1 or /dynamic_columns/1.json
  def update
    respond_to do |format|
      if @dynamic_column.update(dynamic_column_params)
        format.html { redirect_to @dynamic_column, notice: "Dynamic column was successfully updated." }
        format.json { render :show, status: :ok, location: @dynamic_column }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dynamic_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dynamic_columns/1 or /dynamic_columns/1.json
  def destroy
    @dynamic_column.destroy!

    respond_to do |format|
      format.html { redirect_to dynamic_columns_path, status: :see_other, notice: "Dynamic column was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dynamic_column
      @dynamic_column = DynamicColumn.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def dynamic_column_params
      params.expect(dynamic_column: [ :type, :required, :default_value, :dynamic_form_id ])
    end
end
