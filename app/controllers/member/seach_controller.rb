class Member::SeachController < ApplicationController

  def seach
    @skis = @q.result
    @genres = Genre.all
    render 'member/skis/index'
  end
end
