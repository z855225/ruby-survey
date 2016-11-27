require 'date'

class StarSignList

    def current_star_sign_list (year, birthday)

        list = {

            水瓶座: {
                start_date: Date.new(year,1,21),
                end_date: Date.new(year,2,19)
            },

            雙魚座: {
                start_date: Date.new(year, 2, 20),
                end_date: Date.new(year, 3, 20)
            },

            白羊座: {
                start_date: Date.new(year, 3, 21),
                end_date: Date.new(year, 4, 20)
            },

            金牛座: {
                start_date: Date.new(year, 4, 21),
                end_date: Date.new(year, 5, 21)
            },

            雙子座: {
                start_date: Date.new(year, 5, 22),
                end_date: Date.new(year, 6, 21)
            },

            巨蟹座: {
                start_date: Date.new(year, 6, 22),
                end_date: Date.new(year, 7, 22)
            },

            獅子座: {
                start_date: Date.new(year, 7, 23),
                end_date: Date.new(year, 8, 23)
            },

            處女座: {
                start_date: Date.new(year, 8, 24),
                end_date: Date.new(year, 9, 23)
            },

            天秤座: {
                start_date: Date.new(year, 9, 24),
                end_date: Date.new(year, 10, 23)
            },

            天蠍座: {
                start_date: Date.new(year, 10, 24),
                end_date: Date.new(year, 11, 22)
            },

            射手座: {
                start_date: Date.new(year, 11, 23),
                end_date: Date.new(year, 12, 21)
            },

            魔羯座: {
                start_date: Date.new(year, 12, 22),
                end_date: Date.new(year+1, 1, 20)
            }
        }

    end

    def new_star_sign_list (year, birthday)

        list = {

            魔羯座: {
                start_date: Date.new(year, 1, 20),
                end_date: Date.new(year, 2, 17)
            },

            水瓶座: {
                start_date: Date.new(year, 2, 18),
                end_date: Date.new(year, 3, 12)
            },

            雙魚座: {
                start_date: Date.new(year, 3, 13),
                end_date: Date.new(year, 4, 18)
            },

            白羊座: {
                start_date: Date.new(year, 4, 19),
                end_date: Date.new(year, 5, 13)
            },

            金牛座: {
                start_date: Date.new(year, 5, 14),
                end_date: Date.new(year, 6, 22)
            },

            雙子座: {
                start_date: Date.new(year, 6, 23),
                end_date: Date.new(year, 7, 21)
            },

            巨蟹座: {
                start_date: Date.new(year, 7, 22),
                end_date: Date.new(year, 8, 10)
            },

            獅子座: {
                start_date: Date.new(year, 8, 11),
                end_date: Date.new(year, 9, 16)
            },

            處女座: {
                start_date: Date.new(year, 9, 17),
                end_date: Date.new(year, 10, 31)
            },

            天秤座: {
                start_date: Date.new(year, 11, 1),
                end_date: Date.new(year, 11, 23)
            },

            天蠍座: {
                start_date: Date.new(year, 11, 24),
                end_date: Date.new(year, 11, 29)
            },

            蛇夫座: {
                start_date: Date.new(year, 11, 30),
                end_date: Date.new(year, 12, 17)
            },

            射手座: {
                start_date: Date.new(year, 12, 18),
                end_date: Date.new(year+1, 1, 19)
            }

        }

    end

end
