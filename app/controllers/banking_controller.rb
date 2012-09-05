class BankingController < ApplicationController
    @@title = "On-line banking"
    def home
        @title = @@title
    end
end
