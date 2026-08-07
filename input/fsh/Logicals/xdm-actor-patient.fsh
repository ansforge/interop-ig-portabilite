Logical: XDMActorPatient
Id : xdmActorPatient
Parent: xdmActorXdsCore
Title: "XDM ActorPatient"
Description: """
Cet attribut représente l'acteur Patient.
"""
Characteristics: #can-be-target

* xcn1 only PatId
* xcn1 ^example.label = "General"
* xcn1 ^example.valueString = "124018852493334"
* xcn1 ^short = "Identifiant du patient. Le matricule INS du patient, tel que défini dans le cadre juridique, est à utiliser prioritairement. À défaut, un autre identifiant (ex : IPP du système émetteur) peut être utilisé."
* xcn2 ^short = "Nom du patient"
* xcn3 ^short = "Prénom du patient"
* xcn9.composant2  ^short = "Valeur de l'OID de l’autorité d’affectation de l’identifiant. Identifiant de l’autorité d’affectation de l'identifiant utilisé." 
* xcn9.composant2  ^definition = "Cet identifiant, au format HL7 v.2.5 est constitué de trois sous-composants qui prennent les valeurs suivantes en fonction du type d'identifiant.
INS : Valeur de Namespace ID (IS) = Vide, pas de valeur | Valeur de Universal ID (ST) = OID de l’autorité d’affectation de l’INS utilisé, prise dans la liste des OID des autorités d'affectation des INS | Valeur de Universal ID type (ID) = ISO
Autre identifiant : Valeur de Namespace ID (IS) = Vide, pas de valeur | Valeur de Universal ID (ST) = OID de l’autorité d’affectation dl'identifiant (i.e. l'instituion qui a attribué cet identifiant) | Valeur de Universal ID type (ID) = ISO
"
* xcn10  = #D
* xcn13 obeys TypeIdPatient
* xcn13 ^short = "'NH' pour les patients identifiés par leur INS, 'PI' pour les patients identifiés par d'autres identifiants"


Invariant: TypeIdPatient
Description: "XCN.13 doit valoir 'NH' ou 'PI'"
Expression: "xcn13 = 'NH' or xcn13 = 'PI'"
Severity: #error