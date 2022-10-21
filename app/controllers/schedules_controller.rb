class SchedulesController < ApplicationController
  def index
     @schedules = Schedule.all
  end
  
  def new
     @schedule = Schedule.new
  end
 
  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:id,:title,:start,:end,:allday)) 
    if @schedule.save
      redirect_to :schedules
    else
      render "new"
    end
  end
 
  def show
    @schedule = Schedule.find(params[:id])
  end
 
  def edit
    @schedule = Schedule.find(params[:id])
  end
 
  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:id,:title,:start,:end,:allday))
      redirect_to :schedules
    else
      render "edit"
    end
  end
 
  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    redirect_to :schedules
  end
end
