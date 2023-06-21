class Bird < ApplicationRecord
    def find_bird
        Bird.find(params[:id])
      end

end
