class SubscriptionController < ApplicationController
    @@title = "On-line subscription"
    def home
        @title = @@title
    end
end
