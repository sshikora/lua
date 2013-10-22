require "lunit"
require "energy_quest"

module ("testcase1", energy_quest)

function test_success()
  -- local result = energy_quest:random()
  local result = 0
  assert_false(result)
  -- assert_false(false, "this test never fails.")
end

function test_failure()
  fail( "This test always fails!" )
end

-- hello.lua
-- the first program in every language

-- io.write("Hello world, from ",_VERSION,"!\n")