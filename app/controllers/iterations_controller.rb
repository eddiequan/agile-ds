class IterationsController < ApplicationController
  def index
    @iterations = Iteration.all_by_descending_date
  end

  def show
  end

  def new
    @iteration = Iteration.new
  end

  def create
    params = iteration_params.merge(user_id: current_user.id)

    @iteration = Iteration.new(params)
    @iteration.save

    if @iteration.errors.present?
      flash[:alert] = "Iteration was not successfully created."
    else
      flash[:notice] = "Entry added."
    end

    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def iteration_params
    params.require(:iteration).permit(:user_id, :points_done, :points_done_for_release,
                                      :points_planned, :defects_completed, :defects_incomplete, :date)
  end
end
