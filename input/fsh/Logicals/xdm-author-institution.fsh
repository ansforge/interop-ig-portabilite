Logical: XDMAuthorInstitution
Parent: Base
Id: xdmAuthorInstitution
Title: "XDM AuthorInstitution"
Description: """
Cet attribut représente la structure de l’auteur. 
Pour les documents d’expression personnelle du patient, cette métadonnée est absente, cela signifie que l’élément XML `<rim:Slot name='authorInstitution'>` n’est pas transmis. 
"""

* xon1 1..1 string "Nom de la structure"
* xon1 ^example[0].label = "Structure hospitalière"
* xon1 ^example[=].valueString = "Groupe Pitié Salpêtrière"
* xon1 ^example[+].label = "Cabinet libéral"
* xon1 ^example[=].valueString = "CABINET MEDICAL DR DURANT"
* xon1 ^example[+].label = "SNR"
* xon1 ^example[=].valueString = "NOM EDITEUR"


* xon6 1..1 Base "Autorité d’affectation" """Identifiant de l’organisme gérant l’identifiant de la structure. Cet identifiant, au format HL7 v.2.5 est constitué de trois sous-composants qui prennent les valeurs suivantes."""
* xon6.composant1  0..0 string "Vide, pas de valeur"

* xon6.composant2  1..1 string "Valeur de Universal ID"
* xon6.composant2  ^example[0].label = "Professionnel"
* xon6.composant2  ^example[=].valueString = "1.2.250.1.71.4.2.2"
* xon6.composant2  ^example[+].label = "Système de structure"
* xon6.composant2  ^example[=].valueString = "1.2.250.1.71.4.2.2"
* xon6.composant2  ^example[+].label = "SNR"
* xon6.composant2  ^example[=].valueString = "1.3.2 (OID SIRENE)"

* xon6.composant3  1..1 string "Valeur de Universal ID type (ID)"


* xon7 1..1 code "Type d’identifiant"
* xon7  ^example[0].label = "Professionnel"
* xon7  ^example[=].valueString = "IDNST"
* xon7  ^example[1].label = "Système de structure"
* xon7  ^example[=].valueString = "IDNST"
* xon7  ^example[2].label = "SNR"
* xon7  ^example[=].valueString = "SIREN"

* xon10 1..1 StructIdNat "Identifiant de la structure (Struct_IdNat)"


Mapping: AuthorInstitutionCDA
Title: "AuthorInstitutionCDA"
Target : "http://hl7.org/v3/cda"
Description : "Mapping CDA"
Source: XDMAuthorInstitution
* -> "AuthorInstitution"
* xon1 -> "author/assignedAuthor/representedOrganization/name (Si l’élément name fait l’objet d’un nullFlavor dans l’en-tête CDA, le composant 1 de la métadonnée authorInstitution doit être vide)"
* xon6.composant1 -> "NA"
* xon6.composant2 -> "author/assignedAuthor/representedOrganization/id@root (Si l’élément id fait l’objet d’un nullFlavor dans l’en-tête CDA, les composants 6, 7 et 10 de la métadonnée authorInstitution doivent être vides)"
* xon6.composant3 -> "NA"
* xon7 -> "Valeur ne provenant pas de l’en-tête CDA"
* xon10 -> "author/assignedAuthor/representedOrganization/id@extension"

Mapping: AuthorInstitutionDICOMKOS
Title: "AuthorInstitutionDICOMKOS"
Id: KOS
Target : "https://www.dicomstandard.org/"
Description : "Mapping DICOM KOS"
Source: XDMAuthorInstitution
* -> "AuthorInstitution"
* xon1 -> "NA"
* xon6.composant1 -> "NA"
* xon6.composant2 -> "NA"
* xon6.composant3 -> "NA"
* xon7 -> "NA"
* xon10 -> "NA"