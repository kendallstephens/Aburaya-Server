class WelcomeController < ApplicationController
    skip_before_action :authorized, only: [:show, :update, :create]

    def index
    end
end
