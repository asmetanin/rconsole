class InterpreterController < ApplicationController

    protect_from_forgery with: :null_session

    def index
        @cmd = "ruby -e '#{params[:cmd]}'"
        @response = `#{@cmd}`

        respond_to do |format|
            format.html { render json: @response }
            format.json { render json: @response }
        end
    end
end
