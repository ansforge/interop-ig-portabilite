Logical:  XDMSourcePatientInfo
Parent: Base
Id:  xdmSourcePatientInfo
Title: "XDM SourcePatientInfo"
Description: """
Cette métadonnée contient les traits d’identité du patient concerné par le document, connus par le producteur du document. Les informations présentes dans la métadonnée sourcePatientInfo ne doivent en aucun cas être réutilisées pour calculer un identifiant, ni être mises à jour après la soumission du document.

Cette métadonnée reprend la structure du segment PID (Patient Identification) défini par  HL7v2 et l'extension du profil IHE PAM, conformément aux spécifications  : 
- [Extension française du profil IHE PAM](https://www.interopsante.org/publications)
- [Prise en Charge de l'INS dans les volets du CI-SIS ](https://esante.gouv.fr/annexe-prise-en-charge-de-lins-dans-les-volets-du-ci-sis)
"""

* pid3 0..1 Identifier "Liste des identifiants du patient."
* pid5 1..* string "Nom et prénoms du patient."
* pid7 0..1 string "Date/heure de naissance du patient. Obligatoire si l'INS est qualifié."
* pid8 0..1 string "Sexe du patient. Obligatoire si l'INS est qualifié."
* pid11 0..1 string "Adresse du patient"
* pid13 0..1 string "Téléphone de la résidence du patient"
* pid14 0..1 string "Téléphone professionnel du patient"
* pid15 0..1 string "Langue du patient"
* pid16 0..1 string "Statut marital du patient"
* pid18 0..1 string "Numéro de compte du patient"
* pid21 0..1 string "Identifiant de la mère du patient"
* pid23 0..1 string "Lieu de naissance du patient. Obligatoire si l'INS est qualifié."
* pid24 0..1 code "Indicateur de naissance multiple."
* pid25 0..1 integer "Ordre de naissance du patient."
* pid29 0..1 dateTime "Date et heure de décès du patient."
* pid30 0..1 code "Indicateur de décès du patient."