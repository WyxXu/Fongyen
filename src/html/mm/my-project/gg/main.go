package main

import (
	"fmt"
	"reflect"
)

var nat string = "奶"

func 幂(arg string) { fmt.Println("我" + arg) }

func main() {
	幂(nat)
	fmt.Println(reflect.TypeOf(nat))
}
