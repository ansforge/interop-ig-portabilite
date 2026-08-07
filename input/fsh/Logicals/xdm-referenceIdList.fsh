Logical: XDMReferenceId
Parent: Base
Id: xdmreferenceId
Title: "XDM referenceIdList"
Description: """
Modèle logique de referenceIdList.
Cette métadonnée contient une liste d'un ou plusieurs identifiant(s) d'objet(s) associé(s) au document.Liste d'éléments de type CX du standard HL7 v2.5.
"""

* cx1 1..1 string "Identifiant de l'objet référencé"
* cx4 1..1 string "Identifiant de l’organisme ayant attribué l’identifiant de l'objet référencé" """
Cet identifiant, au format HL7 v.2.5 est constitué de trois sous-composants qui prennent les valeurs suivantes.
Valeur de Namespace ID (IS) = Vide, pas de valeur | Valeur de Universal ID (ST) =  OID de l'organisme ayant attribué l’identifiant | Valeur de Universal ID type (ID) = ISO
"""
* cx5 1..1 code "Type d’identifiant"
* cx5 from https://mos.esante.gouv.fr/NOS/JDV_J197-XdsTypesIdentifiantsReferenceId-CISIS/FHIR/JDV-J197-XdsTypesIdentifiantsReferenceId-CISIS (preferred)