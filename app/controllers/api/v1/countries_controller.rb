module Api
  module V1
    class CountriesController < ApplicationController
      before_action :set_country, only: [:show]

      def index
        @countries = Country.all
        render json: @countries
      end

      def show
        render json: @country
      end

      def countries_by_location
        location = params[:location]
        @countries = Country.where('location @> ARRAY[?]', location)
        render json: @countries
      end

      # def countries_by_known_by
      #   known_by = params[:known_by]
      #   @countries = Country.where('known_by @> ARRAY[?]', known_by)
      #   render json: @countries
      # end

      # def countries_by_known_by
      #   known_by = params[:known_by]
      #   @countries = Country.where('known_by::text[] @> ARRAY[?]', known_by)
      #   render json: @countries
      # end

      def countries_by_known_by
        known_by = params[:known_by]
        @countries = Country.where("? = ANY (known_by)", known_by)
        render json: @countries
      end
      
       
      
      private

      def set_country
        @country = Country.find(params[:id])
      end
    end
  end
end
