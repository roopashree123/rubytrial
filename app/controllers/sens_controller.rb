class SensController < ApplicationController
  # GET /sens
  # GET /sens.json
  def index
    @sens = Sen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sens }
    end
  end

  # GET /sens/1
  # GET /sens/1.json
  def show
    @sen = Sen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sen }
    end
  end

  # GET /sens/new
  # GET /sens/new.json
  def new
    @sen = Sen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sen }
    end
  end

  # GET /sens/1/edit
  def edit
    @sen = Sen.find(params[:id])
  end

  # POST /sens
  # POST /sens.json
  def create
    @sen = Sen.new(params[:sen])

    respond_to do |format|
      if @sen.save
        format.html { redirect_to @sen, notice: 'Sen was successfully created.' }
        format.json { render json: @sen, status: :created, location: @sen }
      else
        format.html { render action: "new" }
        format.json { render json: @sen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sens/1
  # PUT /sens/1.json
  def update
    @sen = Sen.find(params[:id])

    respond_to do |format|
      if @sen.update_attributes(params[:sen])
        format.html { redirect_to @sen, notice: 'Sen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sens/1
  # DELETE /sens/1.json
  def destroy
    @sen = Sen.find(params[:id])
    @sen.destroy

    respond_to do |format|
      format.html { redirect_to sens_url }
      format.json { head :no_content }
    end
  end
end
