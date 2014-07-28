class StrongsController < ApplicationController
  # GET /strongs
  # GET /strongs.json
  def index
    @strongs = Strong.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @strongs }
    end
  end

  # GET /strongs/1
  # GET /strongs/1.json
  def show
    @strong = Strong.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @strong }
    end
  end

  # GET /strongs/new
  # GET /strongs/new.json
  def new
    @strong = Strong.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @strong }
    end
  end

  # GET /strongs/1/edit
  def edit
    @strong = Strong.find(params[:id])
  end

  # POST /strongs
  # POST /strongs.json
  def create
    @strong = Strong.new(params[:strong])

    respond_to do |format|
      if @strong.save
        format.html { redirect_to @strong, notice: 'Strong was successfully created.' }
        format.json { render json: @strong, status: :created, location: @strong }
      else
        format.html { render action: "new" }
        format.json { render json: @strong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /strongs/1
  # PUT /strongs/1.json
  def update
    @strong = Strong.find(params[:id])

    respond_to do |format|
      if @strong.update_attributes(params[:strong])
        format.html { redirect_to @strong, notice: 'Strong was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @strong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strongs/1
  # DELETE /strongs/1.json
  def destroy
    @strong = Strong.find(params[:id])
    @strong.destroy

    respond_to do |format|
      format.html { redirect_to strongs_url }
      format.json { head :no_content }
    end
  end
end
