class PageBlockedUsersController < ApplicationController
  # GET /page_blocked_users
  # GET /page_blocked_users.json
  def index
    @page_blocked_users = PageBlockedUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @page_blocked_users }
    end
  end

  # GET /page_blocked_users/1
  # GET /page_blocked_users/1.json
  def show
    @page_blocked_user = PageBlockedUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page_blocked_user }
    end
  end

  # GET /page_blocked_users/new
  # GET /page_blocked_users/new.json
  def new
    @page_blocked_user = PageBlockedUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page_blocked_user }
    end
  end

  # GET /page_blocked_users/1/edit
  def edit
    @page_blocked_user = PageBlockedUser.find(params[:id])
  end

  # POST /page_blocked_users
  # POST /page_blocked_users.json
  def create
    @page_blocked_user = PageBlockedUser.new(params[:page_blocked_user])

    respond_to do |format|
      if @page_blocked_user.save
        format.html { redirect_to @page_blocked_user, notice: 'Page blocked user was successfully created.' }
        format.json { render json: @page_blocked_user, status: :created, location: @page_blocked_user }
      else
        format.html { render action: "new" }
        format.json { render json: @page_blocked_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /page_blocked_users/1
  # PUT /page_blocked_users/1.json
  def update
    @page_blocked_user = PageBlockedUser.find(params[:id])

    respond_to do |format|
      if @page_blocked_user.update_attributes(params[:page_blocked_user])
        format.html { redirect_to @page_blocked_user, notice: 'Page blocked user was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @page_blocked_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_blocked_users/1
  # DELETE /page_blocked_users/1.json
  def destroy
    @page_blocked_user = PageBlockedUser.find(params[:id])
    @page_blocked_user.destroy

    respond_to do |format|
      format.html { redirect_to page_blocked_users_url }
      format.json { head :ok }
    end
  end
end
