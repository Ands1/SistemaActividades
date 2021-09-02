class Activity::NotesController < ApplicationController
  before_action :set_activity_note, only: %i[ show edit update destroy ]

  # GET /activity/notes or /activity/notes.json
  def index
    @activity = Activity.find_by_id(params[:activity_id])
    @activity_notes = Activity::Note.where(activities_id: params[:activity_id]) 
  end

  # GET /activity/notes/1 or /activity/notes/1.json
  def show
    
  end

  # GET /activity/notes/new
  def new
    @activity_note = Activity::Note.new
  end

  # GET /activity/notes/1/edit
  def edit
  end

  # POST /activity/notes or /activity/notes.json
  def create
      

    @activity_note = Activity::Note.new(activity_note_params)
    @activity_note.user= current_user
    @activity_note.activity = Activity.find_by_id(params[:activity_id])

    respond_to do |format|
      if @activity_note.save
        format.html { redirect_to activity_notes_url(@activity_note.activity, @notes), notice: "Note was successfully created." }
        format.json { render :show, status: :created, location: @activity_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @activity_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity/notes/1 or /activity/notes/1.json
  def update
    respond_to do |format|
      if @activity_note.update(activity_note_params)
        format.html { redirect_to activity_notes_url(@activity_note.activity, @notes), notice: "Note was successfully updated." }
        format.json { render :show, status: :ok, location: @activity_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @activity_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity/notes/1 or /activity/notes/1.json
  def destroy
    @activity_note.destroy
    respond_to do |format|
      format.html { redirect_to activity_notes_url, notice: "Note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_note
      @activity_note = Activity::Note.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_note_params
      params.fetch(:activity_note, {}).permit(:comment)
    end
end
