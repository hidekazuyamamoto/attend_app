class AttendsController < ApplicationController

  def new
    @attend = Attend.new
  end

  def create
    @attend = Attend.new(params_attend)
    unless @attend.save
      render :new
    end
  end

    private

    def params_attend
      @ip = request.remote_ip
      params.require(:attend).permit(:name ,:student_number, :latitude, :longitude).merge(ip: @ip)
    end
end
