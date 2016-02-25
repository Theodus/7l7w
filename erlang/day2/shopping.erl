% Consider a shopping list that looks like [{item quantity price}, ...].
% Write a list comprehension that builds a list of items of the form
% [{item total_price}, ...], where total_price is quantity times price.

-module(shopping).
-export([totals/1]).

totals(Cart) -> [{Product, Quantity * Price} || {Product, Quantity, Price} <- Cart].
