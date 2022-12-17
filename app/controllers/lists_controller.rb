class ListsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @list = List.new
  end

# 以下を追加
  def create
     # １.&2. データを受け取り新規登録するためのインスタンス作成
    #list = List.new(list_params)
     # 3. データをデータベースに保存するためのsaveメソッド実行
    #list.save
     # 4. トップ画面へリダイレクト
     #redirect_to '/top'以下に変更
    #redirect_to list_path(list.id)

    #上記を下記に書き換え

    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list.id)
    else
      render :new
      #@lists = List.all#変更後追加
      #render :index #<= new から indexに変更
    end
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
     @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end

  def destroy
    list = List.find(params[:id])  # データ（レコード）を1件取得
    list.destroy  # データ（レコード）を削除
    redirect_to '/lists'  # 投稿一覧画面へリダイレクト
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body, :image)#:imageを追加
  end

end