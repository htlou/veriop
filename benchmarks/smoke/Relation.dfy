function Before(x: int): int { x + x }
function After(x: int): int { 2 * x }

lemma Equal(x: int)
  ensures Before(x) == After(x)
{
}
