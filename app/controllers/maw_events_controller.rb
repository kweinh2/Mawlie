class MawEventsController < ApplicationController
  before_action :set_maw_event, only: [:show, :edit, :update, :destroy]

  # GET /maw_events
  # GET /maw_events.json
  def index
    @search = MawEventSearch.new(params[:search])
    @maw_events = @search.scope
  end

  # GET /maw_events/1
  # GET /maw_events/1.json
  def show
  end

  # GET /maw_events/new
  def new
    @maw_event = MawEvent.new
  end

  # GET /maw_events/1/edit
  def edit
  end

  # POST /maw_events
  # POST /maw_events.json
  def create
    @maw_event = MawEvent.new(maw_event_params)

    respond_to do |format|
      if @maw_event.save
        format.html { redirect_to @maw_event, notice: 'Maw event was successfully created.' }
        format.json { render :show, status: :created, location: @maw_event }
      else
        format.html { render :new }
        format.json { render json: @maw_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maw_events/1
  # PATCH/PUT /maw_events/1.json
  def update
    respond_to do |format|
      if @maw_event.update(maw_event_params)
        format.html { redirect_to @maw_event, notice: 'Maw event was successfully updated.' }
        format.json { render :show, status: :ok, location: @maw_event }
      else
        format.html { render :edit }
        format.json { render json: @maw_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maw_events/1
  # DELETE /maw_events/1.json
  def destroy
    @maw_event.destroy
    respond_to do |format|
      format.html { redirect_to maw_events_url, notice: 'Maw event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import 
    MawEvent.import(params[:file])
    redirect_to maw_events_path, notice: "Events Added"
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maw_event
      @maw_event = MawEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maw_event_params
      params.require(:maw_event).permit(:date, :where, :name)
    end
end
