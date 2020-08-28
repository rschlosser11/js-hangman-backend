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

    def show
        category = Category.find_or_create_by(params[:id])
        render json: category, except: [:created_at, :updated_at]
    end

    def create
        category = Category.find_or_create_by(name: params[:name])
        Word.find_or_create_by(word: params[:word], category: category)
        render json: category, except: [:created_at, :updated_at]
    end
end 