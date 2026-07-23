Logical: XDMPatientId
Parent: Base
Id: xdmPatientId
Title: "XDM PatientId"
Description: """
Modèle logique de patientID.
Cette métadonnée contient l'identifiant du patient tel que connu par les interlocuteurs prenant part à l'échange. Le matricule INS (NIR ou NIA) du patient doit être utilisé en priorité. À défaut de disponibilité de l'INS, un autre identifiant (ex: IPP du système émetteur) peut être utilisé. 
"""

* CX1 1..1 Identifier "Identifiant du patient. L'INS du patient tel que défini dans le cadre juridique, est à utiliser prioritairement. À défaut, un autre identifiant (ex : IPP du système émetteur) peut être utilisé."
* CX4 1..1 string "Identifiant de l’autorité d’affectation de l'identifiant utilisé." """
Cet identifiant, au format HL7 v.2.5 est constitué de trois sous-composants qui prennent les valeurs suivantes en fonction du type d'identifiant.
INS : Valeur de Namespace ID (IS) = Vide, pas de valeur | Valeur de Universal ID (ST) = OID de l’autorité d’affectation de l’INS utilisé, prise dans la liste des OID des autorités d'affectation des INS | Valeur de Universal ID type (ID) = ISO
Autre identifiant : Valeur de Namespace ID (IS) = Vide, pas de valeur | Valeur de Universal ID (ST) = OID de l’autorité d’affectation dl'identifiant (i.e. l'instituion qui a attribué cet identifiant) | Valeur de Universal ID type (ID) = ISO
"""
* CX5 1..1 string "'NH' pour les patients identifiés par leur INS, 'PI' pour les patients identifiés par d'autres identifiants"