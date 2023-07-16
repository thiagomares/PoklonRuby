module WelcomeHelper
    def get_date(date)
        date.strftime('%d/%m/%Y')
    end

    def return_date
        return get_date(Date.today)
    end
end
