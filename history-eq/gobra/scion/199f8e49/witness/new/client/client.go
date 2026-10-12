package client

import "example.com/methodset/onehop"
import "example.com/methodset/path"

type Reverser interface { Reverse() (path.Path, error) }
var _ Reverser = onehop.Path{}
