Logical: XDMCode
Id: xdmCode
Title: "Code XDM"
Description: "Type représentant un concept codé, constitué d'un code, de son libellé et de l'OID du système de codage, portés comme attributs XML. Il ne présente pas lui-même de valeur."
Characteristics: #can-bind
* ^status = #draft
* ^publisher = "ANS"

* code 1..1 code "Code de la valeur."
* code ^representation = #xmlAttr

* displayName 1..1 string "Libellé associé au code."
* displayName ^representation = #xmlAttr

* codingScheme 1..1 oid "OID du système de codage."
* codingScheme ^representation = #xmlAttr