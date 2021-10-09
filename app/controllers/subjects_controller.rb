class SubjectsController < ApplicationController
  def new
    @subject = Subject.new
  end
  def create
    @subject = Subject.new(params_subject)
    if @subject.save
      redirect_to root_path
    else
      render :new
    end
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private
  def params_subject
    params.required(:subject).permit(:subject, :timetable_id, :week_id).merge(user_id: current_user.id)
  end
end
