using Base.Test

# Test infrastructure is working.
@test true

@testset "Checkbook" begin

    # Checkbook module is available
    using Checkbook

    @testset "Transaction" begin

        # There is a constructor for an Transaction.
        transaction = Transaction()

        # There is an Transaction type, and it is exported.
        @test isa(transaction, Transaction)

        # Transaction contains a date; by default that date is today, an
        # empty string for a description, and a zero dollar amount.
        @test transaction.date == Date(now())
        @test transaction.description == ""
        @test transaction.amount === 0.0

        # Transaction's date can be updated.
        transaction.date = Date("2017-01-01")
        @test transaction.date == Date("2017-01-01")

        # Transaction's description can be updated.
        transaction.description = "Initial balance"
        @test transaction.description == "Initial balance"

        # Transaction's amount can be updated.
        transaction.amount += 5
        @test transaction.amount === 5.0

    end

    @testset "Account" begin

        # There is a constructor for an Account.
        account = Account()

        # There is an Account type, and it is exported.
        @test isa(account, Account)

    end

end
