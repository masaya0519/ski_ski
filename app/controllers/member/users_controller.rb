class Member::UsersController < ApplicationController
  def show
    @member = current_member
  end

  def edit
    @member = current_member
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  def unsubscribe
  end

  def withdraw
    @member = current_member
    # is_deletedカラムをtrueに変更することにより削除フラグを立てる
    @member.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:member).permit(:name)
  end
end
