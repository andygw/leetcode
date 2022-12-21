# https://leetcode.com/problems/richest-customer-wealth/

# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
  most = 0

  accounts.each do |customer|
    most = customer.sum if customer.sum > most
  end

  most
end
