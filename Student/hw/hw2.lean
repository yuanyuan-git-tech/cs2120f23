-- (1) Write a function called add
-- that takes two natural numbers, a and b,
-- and returns their sum, a + b. Don't just look up the answer. Figure it out on your own.
-- Hint: do case analysis on the second argument (a Nat can be either Nat.zero or (Nat.succ n')
-- and use the fact that n + (1 + m) = 1 + (n + m).

def add: Nat → Nat → Nat
| n, Nat.zero => n
| n, (Nat.succ m') => Nat.succ (add n m')
-- | n, (m' + 1) => Nat.add 1 (add n m')
#eval add 4 2

-- 5 * 3 = 5 + (5 * 2) = 5 + 5 + 5 * 1 = 5 + 5 + 5 + 0
def mul: Nat → Nat → Nat
| _, Nat.zero => 0
| n, Nat.succ m' => add n (mul n m')

#eval mul 5 4

-- n^m = n * (n^ (m-1))
def exp: Nat → Nat → Nat
| _, 0 => Nat.succ 1
| n, Nat.succ m' => mul n (exp n m')

-- (2) Write a function called append, polymorphic in a type, T,
-- that takes two lists values, n and m of type List T and
-- that returns the result of appending the two lists.
-- For example, append [1,2,3] [4,5,6], should return [1,2,3,4,5,6]. Hint: It's very much list Nat addition.
def append {α : Type}: List α → List α → List α
| (List.nil), m => m
| (List.cons n n'), m => List.cons n (append n' m)
#eval append [1, 2, 3] [4, 5, 6]
