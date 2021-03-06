# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
#match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(*args)
  result = []
  i = 1
  while i < args.length
    if args[0]
      if args[i] && args[i+1] || !(args[i]) && !(args[i+1])
        result.push(false)
      else
        result.push(true)
      end
      i += 2
    elsif !args[0]
      if args[i] && args[i+1] || !(args[i]) && !(args[i+1])
        result.push(true)
      else
        result.push(false)
      end
      i += 2
    end
  end
  result
end