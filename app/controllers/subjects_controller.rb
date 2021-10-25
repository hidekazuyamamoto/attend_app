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
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update(params_subject)
      redirect_to root_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to root_path(current_user.id)
  end

  private

  def params_subject
    params.required(:subject).permit(:subject, :timetable_id, :week_id).merge(user_id: current_user.id)
  end
end
