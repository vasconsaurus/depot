module IncrementCounter

  private

    def increment_counter
      session[:counter].nil? ? session[:counter] = 0 : session[:counter] += 1
    end
end
