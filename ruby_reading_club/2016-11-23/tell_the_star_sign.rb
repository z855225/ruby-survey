require 'date'
require_relative './star_sign_list'

class StarSign

    def what_is_my_current_star_sign (year, birthday)
        @birthday = birthday
        star_sign_list = StarSignList.new
        check_list = star_sign_list.current_star_sign_list(year, birthday)
        convert(check_list, "current")
    end

    def what_is_my_new_star_sign (year, birthday)
        @birthday = birthday
        star_sign_list = StarSignList.new
        check_list = star_sign_list.new_star_sign_list(year, birthday)
        convert(check_list, "new")
    end

    def convert (check_list, current_or_new)
        check_list.each do |star_sign, date_range|
            for checking in date_range[:start_date]..date_range[:end_date]
                puts "Your #{current_or_new} star sign is #{star_sign}" if @birthday == checking.strftime("%m-%d")
                #for debug
                #puts checking.strftime("%m-%d")
            end
        end
    end

end
