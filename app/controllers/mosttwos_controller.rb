class MosttwosController < ApplicationController
  # GET /mosttwos
  # GET /mosttwos.json
  def index
    @mosttwos = Mosttwo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mosttwos }
    end
  end

  # GET /mosttwos/1
  # GET /mosttwos/1.json
  def show
    @mosttwo = Mosttwo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mosttwo }
    end
  end

  # GET /mosttwos/new
  # GET /mosttwos/new.json
  def new
    @mosttwo = Mosttwo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mosttwo }
    end
  end

  # GET /mosttwos/1/edit
  def edit
    @mosttwo = Mosttwo.find(params[:id])
  end

  # POST /mosttwos
  # POST /mosttwos.json
  def create
    @mosttwo = Mosttwo.new(params[:mosttwo])

    respond_to do |format|
      if @mosttwo.save
        format.html { redirect_to @mosttwo, notice: 'Mosttwo was successfully created.' }
        format.json { render json: @mosttwo, status: :created, location: @mosttwo }
      else
        format.html { render action: "new" }
        format.json { render json: @mosttwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mosttwos/1
  # PUT /mosttwos/1.json
  def update
    @mosttwo = Mosttwo.find(params[:id])

    respond_to do |format|
      if @mosttwo.update_attributes(params[:mosttwo])
        format.html { redirect_to @mosttwo, notice: 'Mosttwo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mosttwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mosttwos/1
  # DELETE /mosttwos/1.json
  def destroy
    @mosttwo = Mosttwo.find(params[:id])
    @mosttwo.destroy

    respond_to do |format|
      format.html { redirect_to mosttwos_url }
      format.json { head :no_content }
    end
  end
end
