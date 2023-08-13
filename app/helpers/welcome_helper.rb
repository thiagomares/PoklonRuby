module WelcomeHelper
    def get_date(date)
        date.strftime('%d/%m/%Y')
    end

    def return_date
        valor = 22
        puts valor
        return get_date(Date.today)
    end
end


