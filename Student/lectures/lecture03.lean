def comp (α β γ: Type):  (β → γ) → (α → β) → (
α →  γ)
| g, f =>  fun α => g (f α)


def comp' {α β γ: Type}:  (β → γ) → (α → β) → (
α →  γ)
| g, f => fun α => g (f α)


def square (n: Nat) : Nat := n^2
#reduce square 5


def inc (n : Nat) : Nat := Nat.succ n

-- five arguments

#reduce (comp Nat Nat Nat square inc) 5


def is_even (n : Nat) : Bool := n%2 = 0
#check String.length

def is_even_length : String → Bool := comp _ Nat _ is_even String.length

#reduce is_even_length "Hello"

def is_even_length' := comp' is_even String.length
def is_even_length'' := is_even ∘ String.length


-- take a function and return a function
def apply2 {α : Type} : (α → α) → (α → α)
| f => λ α => f (f α)

#reduce (apply2 inc) 5
