class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories.to_json({
            include: {
                words: {
                    except: [:created_at, :updated_at]
                },
            },
            except: [:created_at, :updated_at]
        })
    end

    def create

    end
end 