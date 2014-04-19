class TemppostsController < ApplicationController
  before_action :set_temppost, only: [:show, :edit, :update, :destroy]

  # GET /tempposts
  # GET /tempposts.json
  def index
    @tempposts = Temppost.all
  end

  # GET /tempposts/1
  # GET /tempposts/1.json
  def show
  end

  # GET /tempposts/new
  def new
    @temppost = Temppost.new
  end

  # GET /tempposts/1/edit
  def edit
  end

  # POST /tempposts
  # POST /tempposts.json
  def create
    @temppost = Temppost.new(temppost_params)

    respond_to do |format|
      if @temppost.save
        format.html { redirect_to @temppost, notice: 'Temppost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @temppost }
      else
        format.html { render action: 'new' }
        format.json { render json: @temppost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tempposts/1
  # PATCH/PUT /tempposts/1.json
  def update
    respond_to do |format|
      if @temppost.update(temppost_params)
        format.html { redirect_to @temppost, notice: 'Temppost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @temppost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tempposts/1
  # DELETE /tempposts/1.json
  def destroy
    @temppost.destroy
    respond_to do |format|
      format.html { redirect_to tempposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temppost
      @temppost = Temppost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temppost_params
      params.require(:temppost).permit(:title, :text)
    end
end
