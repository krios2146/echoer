import gleeunit
import gleeunit/should
import echoer/internal

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn format_pair_test() {
  internal.format_pair("PATH", "/home/bin")
  |> should.equal("PATH=/home/bin")
}
