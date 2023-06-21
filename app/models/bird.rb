class Bird < ApplicationRecord
    def find_bird
        Bird.find(params[:id])
      end
    
      def show
        bird = find_bird
        render json: bird
      rescue ActiveRecord::RecordNotFound
        render_not_found_response
      end 

      def update
        bird = find_bird
        bird.update(bird_params)
        render json: bird
      rescue ActiveRecord::RecordNotFound
        render_not_found_response
      end


end
