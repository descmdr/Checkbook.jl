# Copyright 2017 Keith Mason

module Checkbook

export Transaction, Account

type Transaction
    date::Date
    description::String
    amount::Float64
    Transaction(description::String) = new(Date(now()), description, 0.0)
end

Transaction() = Transaction("")

type Account
end

end
