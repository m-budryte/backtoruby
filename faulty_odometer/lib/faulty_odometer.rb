class FaultyOdometer
    def display_real_mileage(mileage)
        mileage.to_s.tr('56789', '45678').to_i(9)
    end
end