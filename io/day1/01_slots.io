# Execute the code in a slot given its name.

Vehicle := Object clone
Vehicle description := "It takes you places"
Vehicle describe := method(
    description println
)

Vehicle description println
Vehicle describe
