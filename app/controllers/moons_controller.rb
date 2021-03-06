class MoonsController < ApplicationController
  before_action :set_moon, only: [:show, :edit, :update, :destroy]


  # GET /moons
  # GET /moons.json
  def index
    @moons = Moon.all
  end

  # GET /moons/1
  # GET /moons/1.json
  def show
    @moon = Moon.find params[:id]
    @planet = @moon.planet
  end

  # GET /moons/new
  def new
    @moon = Moon.new
  end

  # GET /moons/1/edit
  def edit
    @moon = Moon.find params[:id]
  end

  # POST /moons
  # POST /moons.json
  def create
    @moon = Moon.new(moon_params)


    if params['moon']['image'].nil?
    else
         # perform file upload
         cloudinary = Cloudinary::Uploader.upload( params['moon']['image'])
         @moon.image = cloudinary['url']
    end

    respond_to do |format|
      if @moon.save
        format.html { redirect_to @moon, notice: 'Moon was successfully created.' }
        format.json { render :show, status: :created, location: @moon }
      else
        format.html { render :new }
        format.json { render json: @moon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moons/1
  # PATCH/PUT /moons/1.json
  def update
    if params['moon']['image'].nil?
    else
         # perform file upload
         cloudinary = Cloudinary::Uploader.upload( params['moon']['image'])
         @moon.image = cloudinary['url']
    end

    respond_to do |format|
      if @moon.update(moon_params)
        format.html { redirect_to @moon, notice: 'Moon was successfully updated.' }
        format.json { render :show, status: :ok, location: @moon }
      else
        format.html { render :edit }
        format.json { render json: @moon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moons/1
  # DELETE /moons/1.json
  def destroy
    @moon.destroy
    respond_to do |format|
      format.html { redirect_to moons_url, notice: 'Moon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moon
      @moon = Moon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moon_params
      params.require(:moon).permit(:name, :distance_planet, :radius_orbit_planet, :radius_moon, :orbit_planet, :info, :planet_id, :user_id)
    end
end
