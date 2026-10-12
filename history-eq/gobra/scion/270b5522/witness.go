package main

import (
	"fmt"

	"github.com/scionproto/scion/pkg/log"
)

func main() {
	fmt.Println("debug-enabled:", log.Root().Enabled(log.DebugLevel))
	log.Debug("disabled", 7, "value")
	fmt.Println("returned")
}
