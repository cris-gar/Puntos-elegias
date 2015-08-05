class WelcomeController < ApplicationController

  respond_to :html

  def index
    @tournament = Tournament.last
    @users = User.where.not(role_id: 3)

    @final = Array.new

    i = 0
    j = 1
    @users.each do |user|
      @final[i] = [ j, user.nombre, user.apellido, user.points.sum(:cantidad) ]
      i = i + 1
      j = j + 1
    end

    @final = @final.sort_by {|item| [ item[3]*-1 ]}

    respond_with(@final)
  end

end
