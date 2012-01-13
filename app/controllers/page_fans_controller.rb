class PageFansController < ApplicationController
  # GET /page_fans
  # GET /page_fans.json
  def index
    @page_fans = PageFan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @page_fans }
    end
  end

  # GET /page_fans/1
  # GET /page_fans/1.json
  def show
    @page_fan = PageFan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page_fan }
    end
  end

  # GET /page_fans/new
  # GET /page_fans/new.json
  def new
    @page_fan = PageFan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page_fan }
    end
  end

  # GET /page_fans/1/edit
  def edit
    @page_fan = PageFan.find(params[:id])
  end

  # POST /page_fans
  # POST /page_fans.json
  def create
    @page_fan = PageFan.new(params[:page_fan])

    respond_to do |format|
      if @page_fan.save
        format.html { redirect_to @page_fan, notice: 'Page fan was successfully created.' }
        format.json { render json: @page_fan, status: :created, location: @page_fan }
      else
        format.html { render action: "new" }
        format.json { render json: @page_fan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /page_fans/1
  # PUT /page_fans/1.json
  def update
    @page_fan = PageFan.find(params[:id])

    respond_to do |format|
      if @page_fan.update_attributes(params[:page_fan])
        format.html { redirect_to @page_fan, notice: 'Page fan was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @page_fan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_fans/1
  # DELETE /page_fans/1.json
  def destroy
    @page_fan = PageFan.find(params[:id])
    @page_fan.destroy

    respond_to do |format|
      format.html { redirect_to page_fans_url }
      format.json { head :ok }
    end
  end
end
