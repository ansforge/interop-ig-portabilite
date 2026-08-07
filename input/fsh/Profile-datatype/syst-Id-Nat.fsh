
Profile: SystIdNat
Parent: string
Id: systIdNat
Title: "SystIdNat"
Description: """
Identification d'un système

L’identification du système  est construite selon le tableau dessous :
- 1 + Identifiant cabinet ADELI/Identifiant interne du système dans la structure 
- 3 + FINESS/Identifiant interne du système dans la structure  
- 4 + SIREN/Identifiant interne du système dans la structure 
- 5 + SIRET/Identifiant interne du système dans la structure 
- 6 + Identifiant cabinet RPPS/Identifiant interne du système dans la structure 

"""

* obeys SystIdNat-invariant

Invariant:   SystIdNat-invariant
Description: "Le numéro PSIdNat doit être un entier commençant par 0, 1, 3, 4, 5, 6 ou 8"
Expression: "$this.matches('^(0|3|4|5|6)\\d*$')"
Severity:    #error