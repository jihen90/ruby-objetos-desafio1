class Bankaccount
    attr_accessor :username
    attr_reader :account_number, :vip
    def initialize(username, account_number, vip = 0)
        if account_number.digits.count != 8
            raise RangeError, 'Número de digitos incorrecto'
        end
        if !(0..1).include?(vip)
            raise RangeError, 'Numero Vip Incorrecto'
        end

        @username = username
        @account_number = account_number
        @vip = vip
    end

    def acc_vip
        "#{self.vip}-#{self.account_number}"
    end
end

bank_user = Bankaccount.new('Andres', 12345678)

pp bank_user.username
pp bank_user.acc_vip