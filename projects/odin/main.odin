package main

import "core:fmt"
import "core:os"

main :: proc() -> string{
    buf : [10]byte
    stdin, err := os.read(os.stdin, buf[:])
    if err < 0 {
      return "error"
    }

    fmt.printf("%s", buf)
}
