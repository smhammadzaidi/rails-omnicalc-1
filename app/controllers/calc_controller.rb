class CalcController < ApplicationController
  def square
    render template: "calcs/square"
  end

  def squareroot
    render template: "calcs/squareroot"
  end

  def payment
    render template: "calcs/payment"
  end

  def random
    render template: "calcs/random"
  end

  def square_result
    @users_number = params.fetch("users_number")

    @result = @users_number.to_f ** 2

    render template: "calcs/square_result"
  end

  def squareroot_result
    @users_number = params.fetch("users_number")

    @result = @users_number.to_f ** 0.5

    render template: "calcs/squareroot_result"
  end

  def payment_result
    @apr = params.fetch("apr").to_i.to_fs(:percentage, { :precision => 4 })
    @years = params.fetch("years").to_i
    @principal = params.fetch("principal").to_i.to_fs(:currency, { :precision => 2 })

    @r = params.fetch("apr").to_f / 100 / 12
    @n = @years.to_f * 12
    @numerator = (@r) * params.fetch("principal").to_f
    @denominator = 1 - ((1 + @r) ** (-@n))

    @result = @numerator / @denominator

    render template: "calcs/payment_result"
  end

  def random_result
    @minimum_num = params.fetch("user_min").to_f
    @maximum_num = params.fetch("user_max").to_f
    @random = rand(@minimum_num..@maximum_num)
    render template: "calcs/random_result"
  end
end
