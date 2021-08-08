class BankAccount

    attr_accessor :interest 
    attr_accessor :balance
    attr_accessor :checking
    attr_accessor :saving

    @@bankAccounts = 0

    def initialize
        @interest = 0.01
        # @balance = @checking + @saving
        @checking = 0
        @saving = 0
        @@bankAccounts +=1
        @account_num = account_num
    end

    def checking
        puts @checking
    end


    def saving
        puts @saving
    end 


    def deposit(account, add_amount)
        if account == "checking"
            @checking += add_amount
        else
            @saving += add_amount
        end
    end

    def withdraw(account, withdraw_amount)
        if account == "checking"
            if @checking == 0 
                puts ("checking is at 0 for withdraw")
            else
                @checking -= withdraw_amount
            end 
        else account == "saving"
            if @saving == 0 
                puts ("saving is at 0 for withdraw")
            else
                @saving -= withdraw_amount
            end
        end
    end 

    def total
        puts "your checking account is: #{@checking}"
        puts "your saving account is: #{@saving}"
        puts "total balance is: #{@checking + @saving}"
    end 

    def account_information
        puts "User account number is: #{@account_num}"
        puts "total money is: #{@checking + @saving}"
        puts "checking account: #{@checking} and saving account: #{@saving}"
        puts "total interest rate #{@interest}"
    end

    def total_bank_accounts
        @@bankAccounts
    end

    private
        def account_num
            Array.new(10).map { rand(1..9) }.join
        end

end

user = BankAccount.new
user.total
user.deposit(checking, 150)
user.deposit(saving, 275)
user.account_information
