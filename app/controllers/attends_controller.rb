class AttendsController < ApplicationController
  require 'csv'
  
  def index
    @subject = Subject.where(user_id: current_user.id).order("week_id ASC")
  end

  def new
    @attend = Attend.new
    @attends = Attend.all
    respond_to do |format|
      format.html
      format.csv do |csv|
        send_posts_csv(@attends)
      end
    end
  end

  def create
    @attend = Attend.new(params_attend)
    @attends = Attend.all
    unless @attend.save
      render :new
    end
  end
  def destroy_all
    Attend.destroy_all
    redirect_to root_path
  end

    private

    def params_attend
      @ip = request.remote_ip
      params.require(:attend).permit(:name ,:student_number, :latitude, :longitude).merge(ip: @ip)
    end
    def send_posts_csv(attends)
      csv_data = CSV.generate do |csv|
        column_names = %w(名前 学籍番号 出席時間)
        csv << column_names
        attends.each do |attend|
          column_values = [
            attend.name,
            attend.student_number,
            attend.created_at,
          ]
          csv << column_values
        end
      end
      send_data(csv_data, filename: "出席一覧.csv")
    end
end
