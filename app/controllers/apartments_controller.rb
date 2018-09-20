class ApartmentsController < ApplicationController

  def index
      apartments = Apartment.all
      render json: apartments
    end

    def create
      apartment = Apartment.create(apartment_params)
      render json: apartment
    end

    # strong params for apartment
    def apartment_params
      params.require(:apartment).permit(:street, :apto_number, :city, :postal_code, :state, :country, :manager_name, :manager_phone_number, :contact_hours)
    end

end

# it goes on react:
# this.state = {
#   apartment: {
#     street:,
#     apto_number:,
#     city:,
#     postal_code:,
#     state:,
#     country:,
#     manager_name:,
#     manager_phone_number:,
#     contact_hours:
#   }
# }
