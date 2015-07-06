class StusController < ApplicationController
  before_action :set_stu, only: [:show, :edit, :update, :destroy]

  # GET /stus
  # GET /stus.json
  def index
    @stus = Stu.all
  end

  # GET /stus/1
  # GET /stus/1.json
  def show
  end

  # GET /stus/new
  def new
    @stu = Stu.new
  end

  # GET /stus/1/edit
  def edit
  end

  # POST /stus
  # POST /stus.json
  def create
    @stu = Stu.new(stu_params)

    respond_to do |format|
      if @stu.save
        format.html { redirect_to @stu, notice: 'Stu was successfully created.' }
        format.json { render :show, status: :created, location: @stu }
      else
        format.html { render :new }
        format.json { render json: @stu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stus/1
  # PATCH/PUT /stus/1.json
  def update
    respond_to do |format|
      if @stu.update(stu_params)
        format.html { redirect_to @stu, notice: 'Stu was successfully updated.' }
        format.json { render :show, status: :ok, location: @stu }
      else
        format.html { render :edit }
        format.json { render json: @stu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stus/1
  # DELETE /stus/1.json
  def destroy
    @stu.destroy
    respond_to do |format|
      format.html { redirect_to stus_url, notice: 'Stu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stu
      @stu = Stu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stu_params
      params.require(:stu).permit(:student_name, :f_name, :reg_no, :program_id, :session_id, :domicile, :address, :mob, :user_id)
    end
end
