class EventMembersController < ApplicationController
  # GET /event_members
  # GET /event_members.json
  def index
    @event_members = EventMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event_members }
    end
  end

  # GET /event_members/1
  # GET /event_members/1.json
  def show
    @event_member = EventMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event_member }
    end
  end

  # GET /event_members/new
  # GET /event_members/new.json
  def new
    @event_member = EventMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event_member }
    end
  end

  # GET /event_members/1/edit
  def edit
    @event_member = EventMember.find(params[:id])
  end

  # POST /event_members
  # POST /event_members.json
  def create
    @event_member = EventMember.new(params[:event_member])

    respond_to do |format|
      if @event_member.save
        format.html { redirect_to @event_member, notice: 'Event member was successfully created.' }
        format.json { render json: @event_member, status: :created, location: @event_member }
      else
        format.html { render action: "new" }
        format.json { render json: @event_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /event_members/1
  # PUT /event_members/1.json
  def update
    @event_member = EventMember.find(params[:id])

    respond_to do |format|
      if @event_member.update_attributes(params[:event_member])
        format.html { redirect_to @event_member, notice: 'Event member was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @event_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_members/1
  # DELETE /event_members/1.json
  def destroy
    @event_member = EventMember.find(params[:id])
    @event_member.destroy

    respond_to do |format|
      format.html { redirect_to event_members_url }
      format.json { head :ok }
    end
  end
end
