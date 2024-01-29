-- apply2
def comp2 {α: Type} : (α → α) → (α → α)
| f => λ α =>  (f ∘ f) α
-- (f(f a))

-- apply4
def comp4 {α: Type} : (α → α) → (α → α)
| f => λ α =>  (f ∘ f ∘ f ∘ f) α


def compn {α: Type} : Nat → (α → α)  → (α → α)
| (Nat.zero), f => λ α => α
| (Nat.succ n'), f => λ α =>  f (compn n' f α)
-- (compn n' f ∘ f) α

#eval (compn 5 Nat.succ) 0

#check(@List)

def e : List Nat := List.nil
def e' : List Nat := []  -- list NOTATION
def l1 : List Nat := List.cons 1 e
def l1' : List Nat := 1::e  -- cons NOTATION
def l1'' : List Nat := [1]
def l2 : List Nat := List.cons 0 l1
#eval l2

def list_len {α: Type} : List α → Nat
| List.nil => Nat.zero
-- | List.nil => 0
| (List.cons _ t) => 1 + list_len t

#eval list_len l2
