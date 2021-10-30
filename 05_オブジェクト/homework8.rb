class Account
    attr_accessor :money
    def initialize()
        @money = 0
    end

    def deposit(amount)
        @money += amount
    end

    def withdraw(amount)
        if amount > @money
            puts "残金が足りません。"
            puts "口座残金：#{@money}"
        else
            @money -= amount
        end
    end

    def transfer(name, amount)
        self.withdraw(amount)
        name.deposit(amount)
    end

    def balance
        puts @money
    end
end

a = Account.new #aの口座
a.deposit(3000) #aの口座に3000円預ける
b = Account.new #bの口座
b.deposit(1000) #bの口座に1000円預ける
b.withdraw(500) #bの口座から500円引き出す
a.transfer(b, 2000) #aの口座からbの口座に2000円振り込む
puts a.money #aの口座残高を表示
puts b.money #bの口座残高を表示
b.transfer(a, 5000) #bの口座からaの口座に5000円振り込む