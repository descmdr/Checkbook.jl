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

    end

    @testset "Account" begin

        # There is a constructor for an Account.
        account = Account()

        # There is an Account type, and it is exported.
        @test isa(account, Account)

    end

end
