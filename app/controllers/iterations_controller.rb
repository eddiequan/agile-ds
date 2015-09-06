class IterationsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @iteration = Iteration.new
  end

  def create

    @iteration = Iteration.new(iteration_params)
    @iteration.save
    if @iteration.errors.present?
      flash[:alert] = "Iteration was not successfully created."
    else
      flash[:notice] = "Entry added."
    end
    redirect_to('/')

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def iteration_params
      params.require(:iteration).permit(:points_done, :points_done_for_release,
                                        :points_planned, :defects_completed, :defects_incomplete, :date)
    end
end
