class MemosController < ApplicationController
  def index
    @memos = Memo.all
  end

  def show
    @memo = Memo.find(params[:id])
  end

  def new
    @memo = Memo.new #Memo:db create new taple
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    memo.update!(memo_params)
    redirect_to memos_url, notice: "メモ「#{memo.title}」を更新しました。"
  end

  def create
    memo = Memo.new(memo_params)
    memo.save!
    redirect_to memos_url, notice: "メモ「#{memo.title}」を登録しました。"
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to memos_url, notice: "メモ「#{memo.title}」が削除されました。"
  end

  private

  def memo_params
    params.require(:memo).permit(:title,:content)
  end
end
