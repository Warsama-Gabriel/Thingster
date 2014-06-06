class ThingsController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :update, :destroy] #this happens first, because check user depends on it
  before_action :check_user, only: [:edit, :destroy]

  before_action :authenticate_user!

  def index
    @things =Thing.all
  end

  def new
    @thing = current_user.things.new
  end

  def show
  end
  
  def edit
  end

  def create
    @thing = current_user.things.new(thing_params)
      respond_to do |format|
        if @thing.save
          format.html { redirect_to @thing, notice: 'Thing was successfully created.' }
          format.json { render :show, status: :created, location: @thing }
        else
          format.html { render :new }
          format.json { render json: @thing.errors, status: :unprocessable_entity }
        end
      end
  end

  def update
    respond_to do |format|
      if @thing.update(thing_params)
        format.html { redirect_to @thing, notice: 'Thing was successfully updated.' }
        format.json { render :show, status: :ok, location: @thing }
      else
        format.html { render :edit }
        format.json { render json: @thing.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @thing.destroy
    respond_to do |format|
      format.html { redirect_to things_url, notice: 'Thing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def mythings
    @things = current_user.things.all
  end

  private
    
    def set_thing
      @thing = Thing.find(params[:id])
    end

    def check_user
      if current_user.id == @thing.user_id
      else
        flash[:alert] = ("You don't have permission to do that")
        redirect_to action: :index
      end
    end

    def thing_params
      params.require(:thing).permit(:name, :description)
    end
end
