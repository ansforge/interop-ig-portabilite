Logical:  XDMSourcePatientId
Parent: Base
Id:  xdmSourcePatientId
Title: "XDM SourcePatientId"
Description: """
Cette métadonnée contient l’identifiant secondaire du patient dans le système d’information du producteur (IPP) ou l’INS, s’il n’y a pas d’identifiant secondaire. Pour les documents d’expression personnelle du patient, cette métadonnée contient l’INS du patient, à savoir le même identifiant que patientId. 
"""

* CX1 1..1 string "Identifiant secondaire du patient, en l’occurrence. Equivalent à PatientId s'il n'y a pas d'identifiant secondaire."
* CX4 1..1 string "Identifiant de l’autorité d’affectation de l'identifiant utilisé." """
Cet identifiant, au format HL7 v.2.5 est constitué de trois sous-composants qui prennent les valeurs suivantes en fonction du type d'identifiant.
INS : Valeur de Namespace ID (IS) = Vide, pas de valeur | Valeur de Universal ID (ST) = OID de l’autorité d’affectation de l’INS utilisé, prise dans la liste des OID des autorités d'affectation des INS | Valeur de Universal ID type (ID) = ISO
Autre identifiant : Valeur de Namespace ID (IS) = Vide, pas de valeur | Valeur de Universal ID (ST) = OID de l’autorité d’affectation dl'identifiant (i.e. l'instituion qui a attribué cet identifiant) | Valeur de Universal ID type (ID) = ISO
"""
* CX5 1..1 string "'NH' pour les patients identifiés par leur INS, 'PI' pour les patients identifiés par d'autres identifiants."
