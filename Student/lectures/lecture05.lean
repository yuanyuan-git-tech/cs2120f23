#check (@Empty)
#check (Unit)
#check (Nat)
inductive MyEmpty : Type
def e2e : Empty → Empty
| e => e

-- can implement but can not call
-- #eval e2e

-- def n2e : Nat → Empty
