require 'mongoid'

class HomesController < ApplicationController
  #before_action :set_home, only: [:show, :edit, :update, :destroy]

  # GET /homes
  # GET /homes.json
  def index

    #location = Location.new(
        #lat: '3.5464',
        #lang: '-5.676868'
    #);

    #location.save();

    #address = Address.new(
        #city: 'Rochester',
        #state: 'NY',
        #zip: '14623'
   # );

    #address.save();

    #has_many
    #belongd_to

    users = User.new(
        firstName: 'Khalil',
        lastName: 'Norman',
        userName: 'wordup',
        email: 'kpn5679@rit.edu',
    );

    #location.user = users;
    #address.user = users;

    #location.save();
    #address.save();
    users.save();

    users.locations.create(
        lat: '5.7686',
        lang: '06767'
    );

    users.addresses.create(
        city: 'Willingboro',
        state: 'NJ',
        zip: '08046'
    );

  end

  # GET /homes/1
  # GET /homes/1.json
  def show
  end

  # GET /homes/new
  def new
    @home = Home.new
  end

  # GET /homes/1/edit
  def edit
  end

  # POST /homes
  # POST /homes.json
  def create
    @home = Home.new(home_params)

    respond_to do |format|
      if @home.save
        format.html { redirect_to @home, notice: 'Home was successfully created.' }
        format.json { render action: 'show', status: :created, location: @home }
      else
        format.html { render action: 'new' }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homes/1
  # PATCH/PUT /homes/1.json
  def update
    respond_to do |format|
      if @home.update(home_params)
        format.html { redirect_to @home, notice: 'Home was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homes/1
  # DELETE /homes/1.json
  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_to homes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
      @home = Home.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_params
      params[:home]
    end
end
