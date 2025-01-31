class CelebritiesController < ApplicationController
  before_action :set_celebrity, only: %i[ show ]

  # GET /celebrities or /celebrities.json
  def index
    @celebrities = Celebrity.all
  end

  # GET /celebrities/1 or /celebrities/1.json
  def show
  end

=begin
  # GET /celebrities/new
  def new
    @celebrity = Celebrity.new
  end

  # GET /celebrities/1/edit
  def edit
  end
=end

  def vote
    @celebrity = Celebrity.find(params[:id])

    if params[:vote] == "known"
      @celebrity.increment_known
    elsif params[:vote] == "unknown"
      @celebrity.increment_unknown
    end

    redirect_to celebrities_path, notice: '投票されました。'
  end

=begin
  # POST /celebrities or /celebrities.json
  def create
    @celebrity = Celebrity.new(celebrity_params)

    respond_to do |format|
      if @celebrity.save
        format.html { redirect_to @celebrity, notice: "Celebrity was successfully created." }
        format.json { render :show, status: :created, location: @celebrity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @celebrity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celebrities/1 or /celebrities/1.json
  def update
    respond_to do |format|
      if @celebrity.update(celebrity_params)
        format.html { redirect_to @celebrity, notice: "Celebrity was successfully updated." }
        format.json { render :show, status: :ok, location: @celebrity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @celebrity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celebrities/1 or /celebrities/1.json
  def destroy
    @celebrity.destroy!

    respond_to do |format|
      format.html { redirect_to celebrities_path, status: :see_other, notice: "Celebrity was successfully destroyed." }
      format.json { head :no_content }
    end
  end
=end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celebrity
      @celebrity = Celebrity.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def celebrity_params
      params.expect(celebrity: [ :name, :image_url, :known_cnt, :unknown_cnt ])
    end
end
