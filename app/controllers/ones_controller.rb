class OnesController < ApplicationController
  # GET /ones
  # GET /ones.json
  def index
    @ones = One.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ones }
    end
  end

  # GET /ones/1
  # GET /ones/1.json
  def show
    @one = One.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @one }
    end
  end

  # GET /ones/new
  # GET /ones/new.json
  def new
    @one = One.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @one }
    end
  end

  # GET /ones/1/edit
  def edit
    @one = One.find(params[:id])
  end

  # POST /ones
  # POST /ones.json
  def create
    @one = One.new(params[:one])

    respond_to do |format|
      if @one.save
        format.html { redirect_to @one, notice: 'One was successfully created.' }
        format.json { render json: @one, status: :created, location: @one }
      else
        format.html { render action: "new" }
        format.json { render json: @one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ones/1
  # PUT /ones/1.json
  def update
    @one = One.find(params[:id])

    respond_to do |format|
      if @one.update_attributes(params[:one])
        format.html { redirect_to @one, notice: 'One was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ones/1
  # DELETE /ones/1.json
  def destroy
    @one = One.find(params[:id])
    @one.destroy

    respond_to do |format|
      format.html { redirect_to ones_url }
      format.json { head :no_content }
    end
  end
end
