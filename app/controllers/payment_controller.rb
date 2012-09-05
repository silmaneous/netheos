class PaymentController < ApplicationController
    @@title = "On-line payment"
    def home
        @title = @@title
    end
end
