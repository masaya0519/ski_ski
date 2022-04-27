class Member::SeachController < ApplicationController

  def seach
    @skis = @q.result
    render 'member/skis/index'
  end
end
