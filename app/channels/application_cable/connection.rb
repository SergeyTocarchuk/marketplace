module ApplicationCable

  class Connection < ActionCable::Connection::Base

    identified_by :current_customer

    def connect
      self.current_customer = User.first || reject_unauthorized_connection
    end

    def disconnect; end

  end

end
