class Activity::ParticipantsController < ApplicationController
  before_action :set_activity_participant, only: %i[ show edit update destroy ]

  # GET /activity/participants or /activity/participants.json
  def index
    @activity = Activity.find_by_id(params[:activity_id])
    @activity_participants = Activity::Participant.where(activities_id: params[:activity_id]) 
    
  end

  # GET /activity/participants/1 or /activity/participants/1.json
  def show
  end

  # GET /activity/participants/new
  def new
    @activity_participant = Activity::Participant.new
  end

  # GET /activity/participants/1/edit
  def edit
  end

  # POST /activity/participants or /activity/participants.json
  def create
    @activity_participant = Activity::Participant.new(activity_participant_params)
    #@activity_participant.user = current_user
    @activity_participant.activity = Activity.find_by_id(params[:activity_id])

    respond_to do |format|
      if @activity_participant.save
        format.html { redirect_to activity_participants_url, notice: "Participant was successfully created." }
        format.json { render :show, status: :created, location: @activity_participant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @activity_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity/participants/1 or /activity/participants/1.json
  def update
    respond_to do |format|
      if @activity_participant.update(activity_participant_params)
        format.html { redirect_to activity_participant_url(@activity_participant.activity), notice: "Participant was successfully updated." }
        format.json { render :show, status: :ok, location: @activity_participant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @activity_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity/participants/1 or /activity/participants/1.json
  def destroy
    @activity_participant.destroy
    respond_to do |format|
      format.html { redirect_to activity_participants_url, notice: "Participant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_participant
      @activity_participant = Activity::Participant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_participant_params
      params.fetch(:activity_participant, {}).permit(:participation_type, :contribution, :users_id)
    end
end
