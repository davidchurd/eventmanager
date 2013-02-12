class SponsorMeetingsController < ApplicationController
  # GET /sponsor_meetings
  # GET /sponsor_meetings.json
  def index
    @sponsor_meetings = SponsorMeeting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sponsor_meetings }
    end
  end

  # GET /sponsor_meetings/1
  # GET /sponsor_meetings/1.json
  def show
    @sponsor_meeting = SponsorMeeting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sponsor_meeting }
    end
  end

  # GET /sponsor_meetings/new
  # GET /sponsor_meetings/new.json
  def new
    @sponsor_meeting = SponsorMeeting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sponsor_meeting }
    end
  end

  # GET /sponsor_meetings/1/edit
  def edit
    @sponsor_meeting = SponsorMeeting.find(params[:id])
  end

  # POST /sponsor_meetings
  # POST /sponsor_meetings.json
  def create
    @sponsor_meeting = SponsorMeeting.new(params[:sponsor_meeting])

    respond_to do |format|
      if @sponsor_meeting.save
        format.html { redirect_to @sponsor_meeting, notice: 'Sponsor meeting was successfully created.' }
        format.json { render json: @sponsor_meeting, status: :created, location: @sponsor_meeting }
      else
        format.html { render action: "new" }
        format.json { render json: @sponsor_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sponsor_meetings/1
  # PUT /sponsor_meetings/1.json
  def update
    @sponsor_meeting = SponsorMeeting.find(params[:id])

    respond_to do |format|
      if @sponsor_meeting.update_attributes(params[:sponsor_meeting])
        format.html { redirect_to @sponsor_meeting, notice: 'Sponsor meeting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sponsor_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsor_meetings/1
  # DELETE /sponsor_meetings/1.json
  def destroy
    @sponsor_meeting = SponsorMeeting.find(params[:id])
    @sponsor_meeting.destroy

    respond_to do |format|
      format.html { redirect_to sponsor_meetings_url }
      format.json { head :no_content }
    end
  end
end
