class OctsController < ApplicationController
  before_action :set_oct, only: [:show, :edit, :update, :destroy]

  # GET /octs
  # GET /octs.json
  def index
    @octs = Oct.all
  end

  # GET /octs/1
  # GET /octs/1.json
  def show
  end

  # GET /octs/new
  def new
    @oct = Oct.new
  end

  # GET /octs/1/edit
  def edit
  end

  # POST /octs
  # POST /octs.json
  def create
    @oct = Oct.new(oct_params)

    respond_to do |format|
      if @oct.save
        format.html { redirect_to @oct, notice: 'Oct was successfully created.' }
        format.json { render :show, status: :created, location: @oct }
      else
        format.html { render :new }
        format.json { render json: @oct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /octs/1
  # PATCH/PUT /octs/1.json
  def update
    respond_to do |format|
      if @oct.update(oct_params)
        format.html { redirect_to @oct, notice: 'Oct was successfully updated.' }
        format.json { render :show, status: :ok, location: @oct }
      else
        format.html { render :edit }
        format.json { render json: @oct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /octs/1
  # DELETE /octs/1.json
  def destroy
    @oct.destroy
    respond_to do |format|
      format.html { redirect_to octs_url, notice: 'Oct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oct
      @oct = Oct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oct_params
      params.require(:oct).permit(:player_id, :oct_id, :hyper, :alpha, :color, :sign_sha1)
    end
end
