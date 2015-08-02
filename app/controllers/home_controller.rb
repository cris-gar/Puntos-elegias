class HomeController < ApplicationController

  respond_to :html

  def index
    @users = User.where.not(role_id: 3)

    @final = Array.new

    i = 0

    @users.each do |user|
      @final[i] = [ user.nombre, user.apellido, user.points.sum(:cantidad) ]
      i = i + 1
    end

    @final = @final.sort_by {|item| [ item[2]*-1 ]}

    respond_with(@final)
  end

end
