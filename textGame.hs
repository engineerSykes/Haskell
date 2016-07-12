data List a = Cons a (List a)
            | Nil
            deriving (Eq, Show)

-- data Humanoid = Person | Enemy

data Person = Person { personName :: String, hitpoints :: Int, strength :: Int}
                       deriving (Eq, Ord, Show)

data Enemy = Ogre  {creatureName :: String, pwrLvl :: Int}
           | Troll {creatureName :: String, pwrLvl :: Int}
           | Giant {creatureName :: String, pwrLvl :: Int}
           | Bunny {creatureName :: String, pwrLvl :: Int}

data Maybe' a = Just' a | Nothing' a

me = Person "Chris" 100 18
dad = Person "Skip" 100 18
mom = Person "Helen" 100 10
bro = Person "Mike" 100 20
bro2 = Person "Josh" 5 10

ogre  = Person  "ogre"  20 10
troll = Person "troll" 30 12
giant = Person "giant" 60 16
bunny = Person "bunny" 80 16

cure1 :: Person -> Person
cure1 (Person name hitpoints str) = Person name (hitpoints + 100) str

getName :: Person -> String
getName (Person name hitpoints str) = name

getHP :: Person -> String
getHP (Person name hitpoints str) = (show hitpoints) ++ " Hit Points"

getStr :: Person -> String
getStr (Person name hitpoints str) = name ++ "has " ++ (show str) ++ " Strength"
-- attackMon :: Person -> Enemy -> Int
-- attackMon Person Enemy = Maybe Person
