module EvalIntExp where

import AbsIntExpV -- a module to represent abstract integer expressions
import Data.Map -- a module to represent finite mappings

type Store = Map Ident Integer -- give a name to mappings from identifiers to integers

eval :: IntExp -> Integer
eval (Add a b) = eval a + eval b
eval (Mul a b) = eval a * eval b
eval (Neg a)   = negate (eval a)
eval (Nmb n)   = n
eval (Var _)   = error "Variable-free expressions only!"

evalv :: Store -> IntExp -> Integer
evalv s (Add a b) = evalv s a + evalv s b
evalv s (Mul a b) = evalv s a * evalv s b
evalv s (Neg a)   = negate (evalv s a)
evalv s (Nmb n)   = n
evalv s (Var i)   = s ! i

xyz :: Store
xyz = fromList [(Ident "x", 0), (Ident "y", 27), (Ident "z", 16)]

