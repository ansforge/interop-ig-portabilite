Logical: XDMActorPatient
Id : xdmActorPatient
Parent: xdmActorXdsCore
Title: "XDM ActorPatient"
Description: """
Cet attribut représente l'acteur Patient.
"""
Characteristics: #can-be-target

* XCN1 only PatId
* XCN1 ^example.label = "General"
* XCN1 ^example.valueString = "124018852493334"
* XCN1 ^short = "Identifiant du patient. Le matricule INS du patient, tel que défini dans le cadre juridique, est à utiliser prioritairement. À défaut, un autre identifiant (ex : IPP du système émetteur) peut être utilisé."
* XCN2 ^short = "Nom du patient"
* XCN3 ^short = "Prénom du patient"
* XCN9.composant2  ^short = "Valeur de l'OID de l’autorité d’affectation de l’identifiant. Identifiant de l’autorité d’affectation de l'identifiant utilisé." 
* XCN9.composant2  ^definition = "Cet identifiant, au format HL7 v.2.5 est constitué de trois sous-composants qui prennent les valeurs suivantes en fonction du type d'identifiant.
INS : Valeur de Namespace ID (IS) = Vide, pas de valeur | Valeur de Universal ID (ST) = OID de l’autorité d’affectation de l’INS utilisé, prise dans la liste des OID des autorités d'affectation des INS | Valeur de Universal ID type (ID) = ISO
Autre identifiant : Valeur de Namespace ID (IS) = Vide, pas de valeur | Valeur de Universal ID (ST) = OID de l’autorité d’affectation dl'identifiant (i.e. l'instituion qui a attribué cet identifiant) | Valeur de Universal ID type (ID) = ISO
"
* XCN10  = #D
* XCN13 obeys TypeIdPatient
* XCN13 ^short = "'NH' pour les patients identifiés par leur INS, 'PI' pour les patients identifiés par d'autres identifiants"


Invariant: TypeIdPatient
Description: "XCN.13 doit valoir 'NH' ou 'PI'"
Expression: "XCN13 = 'NH' or XCN13 = 'PI'"
Severity: #error