import gleam/io
import gleam/result
import envoy
import argv
import echoer/internal

pub fn main() {
  case argv.load().arguments {
    ["get", name] -> get(name)
    _ -> io.println("Usage: echoer get <name>")
  }
}

fn get(name: String) -> Nil {
  let value =
    envoy.get(name)
    |> result.unwrap("")
  io.println(internal.format_pair(name, value))
}
