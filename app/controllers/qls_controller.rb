class QlsController < ApplicationController
  before_action :set_ql, only: %i[ show edit update destroy ]

  # GET /qls or /qls.json
  def index
    @qls = Ql.all
  end

  # GET /qls/1 or /qls/1.json
  def show
  end

  # GET /qls/new
  def new
    @ql = Ql.new
  end

  # GET /qls/1/edit
  def edit
  end

  # POST /qls or /qls.json
  def create
    @ql = Ql.new(ql_params)

    respond_to do |format|
      if @ql.save
        format.html { redirect_to ql_url(@ql), notice: "Ql was successfully created." }
        format.json { render :show, status: :created, location: @ql }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ql.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qls/1 or /qls/1.json
  def update
    respond_to do |format|
      if @ql.update(ql_params)
        format.html { redirect_to ql_url(@ql), notice: "Ql was successfully updated." }
        format.json { render :show, status: :ok, location: @ql }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ql.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qls/1 or /qls/1.json
  def destroy
    @ql.destroy

    respond_to do |format|
      format.html { redirect_to qls_url, notice: "Ql was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ql
      @ql = Ql.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ql_params
      params.require(:ql).permit(:title, :content)
    end
end
