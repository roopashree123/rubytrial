class MostsController < ApplicationController
  # GET /mosts
  # GET /mosts.json
  def index
    @mosts = Most.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mosts }
    end
  end

  # GET /mosts/1
  # GET /mosts/1.json
  def show
    @most = Most.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @most }
    end
  end

  # GET /mosts/new
  # GET /mosts/new.json
  def new
    @most = Most.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @most }
    end
  end

  # GET /mosts/1/edit
  def edit
    @most = Most.find(params[:id])
  end

  # POST /mosts
  # POST /mosts.json
  def create
    @most = Most.new(params[:most])

    respond_to do |format|
      if @most.save
        format.html { redirect_to @most, notice: 'Most was successfully created.' }
        format.json { render json: @most, status: :created, location: @most }
      else
        format.html { render action: "new" }
        format.json { render json: @most.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mosts/1
  # PUT /mosts/1.json
  def update
    @most = Most.find(params[:id])

    respond_to do |format|
      if @most.update_attributes(params[:most])
        format.html { redirect_to @most, notice: 'Most was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @most.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mosts/1
  # DELETE /mosts/1.json
  def destroy
    @most = Most.find(params[:id])
    @most.destroy

    respond_to do |format|
      format.html { redirect_to mosts_url }
      format.json { head :no_content }
    end
  end
end
