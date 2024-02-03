-- apply2
def comp2 {α: Type} : (α → α) → (α → α)
| f => λ α =>  (f ∘ f) α
-- (f(f a))

-- apply4
def comp4 {α: Type} : (α → α) → (α → α)
-- | f => λ a =>  (f ∘ f ∘ f ∘ f) a
| f => λ (a: α) =>  (f ∘ f ∘ f ∘ f) a


def compn {α: Type} : Nat → (α → α)  → (α → α)
| (Nat.zero), _ => λ a => a
| (Nat.succ n'), f => λ a =>  f (compn n' f a)

def compn' {α: Type} : Nat → (α → α)  → (α → α)
| Nat.zero, _ => λ a => a
| (Nat.succ n'), f => f ∘ compn' n' f

def my_comp {α β γ: Type} : (β → γ) → (α → β) → (α → γ)
-- | g, f => g ∘ f
| g, f => fun a => g (f a)

#eval (compn' 5 Nat.succ) 0

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
