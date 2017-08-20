# Copyright 2017 Keith Mason

module Checkbook

using Currencies

export Transaction, Account

type Transaction
    date::Date
    description::String
    amount::Monetary
    Transaction(description::String) = new(Date(now()), description, Monetary(:USD, 0))
end

Transaction() = Transaction("")

Base.put!(transaction::Transaction, date::Date) = transaction.date = date
Base.put!(transaction::Transaction, description::String) = transaction.description = description
Base.put!(transaction::Transaction, amount::Int64) = transaction.amount = Monetary(:USD, amount)

type Account
end

end
