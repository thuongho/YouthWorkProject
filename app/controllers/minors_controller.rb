class MinorsController < ApplicationController
  before_action :set_minor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_minor!, only: [:edit, :update, :destroy]
  before_action :populate_grade, only: [:new, :edit]


  # GET /minors
  # GET /minors.json
  def index
    @minors = Minor.all
  end

  # GET /minors/1
  # GET /minors/1.json
  def show
  end

  # GET /minors/new
  def new
    @minor = Minor.new
  end

  # GET /minors/1/edit
  def edit
  end

  # POST /minors
  # POST /minors.json
  def create
    redirect_to minor_path(current_minor.id) if minor_signed_in?
    @minor = Minor.new(minor_params)

    respond_to do |format|
      if @minor.save
        format.html { redirect_to @minor, notice: 'Your account was successfully created.' }
        format.json { render :show, status: :created, location: @minor }
      else
        format.html { render :new }
        format.json { render json: @minor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minors/1
  # PATCH/PUT /minors/1.json
  def update
    respond_to do |format|
      if @minor.update(minor_params)
        format.html { redirect_to @minor, notice: '#{@minor.first_name}\'s account was successfully updated.' }
        format.json { render :show, status: :ok, location: @minor }
      else
        format.html { render :edit }
        format.json { render json: @minor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minors/1
  # DELETE /minors/1.json
  def destroy
    @minor.destroy
    respond_to do |format|
      format.html { redirect_to minors_url, notice: 'Your account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minor
      @minor = Minor.find(params[:id])
      redirect_to(root_url) unless current_minor?(@minor)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minor_params
      params.require(:minor).permit(:first_name, :last_name, :ssn, :dob, :grade)
    end

    def populate_grade
      @grades = [5,6,7,8,9,10,11,12,"n/a"]
    end
end
