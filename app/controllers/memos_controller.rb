class MemosController < ApplicationController

    before_action :authenticate_user!

    def index
        if params[:user_id]
            @memos = User.find(params[:user_id]).memos.paginate(page: params[:page], per_page: 5)
            @user = User.find(params[:user_id])
        else
            @memos = Memo.paginate(page: params[:page], per_page: 5)
        end
    end

    def show
        set_memo
    end

    def new
        @memo = Memo.new
    end

    def create
        @memo = Memo.new(memo_params)
        @memo.user = current_user
        if @memo.save
            flash[:success] = "Successfully Saved Memo! Woot!"
            redirect_to @memo
        else
            flash[:notice] = "Sorry, 'Title' and 'Description' cannot be blank."
            render 'new'
        end
    end

    def edit
        set_memo
    end

    def update
        set_memo
        if @memo.update(memo_params)
            flash[:notice] = "Updated successfully"
            redirect_to memo_path(@memo)
        else
            flash[:notice] = "unsuccessful update. try again"
            redirect_to memo_path(@memo)
        end
    end

    def destroy
        set_memo
        if current_user == @memo.user
            @memo.destroy
            redirect_to memos_path
        else
            flash[:alert] = "Sorry, you can only delete your own memo"
            redirect_to @memo
        end
    end

    private

    def set_memo
        @memo = Memo.find(params[:id])
    end

    def memo_params
        params.require(:memo).permit(:title, :description, service_ids: [])
    end

    def require_same_user
        if current_user != @memo.user
            flash[:alert] = "Sorry, you can only edit or delete your own memo"
            redirect_to @memo
        end
    end


end
