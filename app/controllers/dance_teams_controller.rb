class DanceTeamsController < ApplicationController
  before_action :set_dance_team, only: [:show, :edit, :update, :destroy]

  # GET /dance_teams
  # GET /dance_teams.json
  def index
    @dance_teams = DanceTeam.all
  end

  # GET /dance_teams/1
  # GET /dance_teams/1.json
  def show
  end

  # GET /dance_teams/new
  def new
    @dance_team = DanceTeam.new
  end

  # GET /dance_teams/1/edit
  def edit
  end

  # POST /dance_teams
  # POST /dance_teams.json
  def create
    @dance_team = DanceTeam.new(dance_team_params)

    respond_to do |format|
      if @dance_team.save
        format.html { redirect_to @dance_team, notice: 'Dance team was successfully created.' }
        format.json { render :show, status: :created, location: @dance_team }
      else
        format.html { render :new }
        format.json { render json: @dance_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dance_teams/1
  # PATCH/PUT /dance_teams/1.json
  def update
    respond_to do |format|
      if @dance_team.update(dance_team_params)
        format.html { redirect_to @dance_team, notice: 'Dance team was successfully updated.' }
        format.json { render :show, status: :ok, location: @dance_team }
      else
        format.html { render :edit }
        format.json { render json: @dance_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dance_teams/1
  # DELETE /dance_teams/1.json
  def destroy
    @dance_team.destroy
    respond_to do |format|
      format.html { redirect_to dance_teams_url, notice: 'Dance team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dance_team
      @dance_team = DanceTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dance_team_params
      params.require(:dance_team).permit(:name, :phone, :email, :members, :HipHop, :Ballet, :Jazz)
    end
end
