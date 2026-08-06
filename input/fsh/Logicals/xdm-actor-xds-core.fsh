Logical: XDMActorXDSCore
Parent: Base
Id: xdmActorXdsCore
Title: "XDM ActorXDS Core"
Description: """
Cet attribut représente un acteur (humain ou système) ayant contribué au document. Pour les documents d’expression personnelle du patient, cette métadonnée fait référence au patient. 

Type xcn de HL7 v2.5
"""

* xcn1 1..1 string "Identifiant de l'acteur qui. Le format de l'identifiant doit respecter le datatype PatId, PSIdNat ou SystIdNat selon le type d'acteur"
* xcn2 1..1 string "Nom d'exercice du professionnel, nom du patient, nom du système." "Nom d'exercice du professionnel, nom du patient, nom du système."
* xcn3 1..1 string "Prénom usuel de la personne (par défaut le premier prénom), nom du modèle pour les dispositifs ou dénomination pour les autres systèmes."
* xcn9 1..1 Base "Autorité d’affectation"
* xcn9.composant1  0..0 string "Vide, pas de valeur"
* xcn9.composant2  1..1 string "Valeur de Universal ID"
* xcn9.composant3  1..1 string "Valeur de Universal ID type (ID). Valeur fixée à 'ISO'"
* xcn9.composant3 = #ISO
* xcn10 1..1 code "Type de nom : 'D' pour les personnes physiques, 'U', pour les systèmes."
* xcn13 1..1 code "Type d’identifiant"
 
Mapping: ActorXDSCDA
Target : "http://hl7.org/v3/cda"
Description : "Mapping CDA"
Source: XDMActorXDSCore
Title: "ActorXDSCDA"
* -> "ActorXDS"
* xcn1 -> "author/assignedAuthor/id@extension"
* xcn2 -> "author/assignedAuthor/assignedPerson/name/family"
* xcn3 -> "author/assignedAuthor/assignedPerson/name/given"
* xcn9 -> "NA"
* xcn9.composant1 -> "NA"
* xcn9.composant2 -> "author/assignedAuthor/id@root"
* xcn9.composant3 -> "NA"
* xcn10 -> "NA"
* xcn13 -> "Valeur ne provenant pas de l’en-tête CDA"