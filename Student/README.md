# Student Directory

This is the directory in which you should do all of your work. Whenever you need to change a file that the instructor has provided, copy it into this directory (or a subdirectory) first, then make your changes. If you forget to do this and inadvertently change a file in the Instructor directory, follow the instructions in the READE.md file in the Instructor directory.

hashmap<type>
poly
genera
type is object

def id_nat : Nat → Nat
| n => n

def id_string : String → String
| n => n

def id_bool : Bool → Bool
| n => n


same implementation
different: type
parameter

#check (id_poly Nat)   
partial evalution


def comp (\alpa \bata \grama: Type):  (\bata \grama) \to (\alpa \to \beta) \to (\alpa \to grama)
| g, f => fun \alpa => g (f a)

def square (n:Nat) :Nat := n^2
#reduce square 5
def inc (n:Nat) := Nat.succ n


five arguments

#reduce (comp' Nat Nat Nat square inc) 5


def is_even (n:Nat) := n%2 = 0
#check String.length

def is_even_length (s: String) : Bool :=
