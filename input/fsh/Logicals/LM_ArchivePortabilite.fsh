// Modèle logique du DocumentEntry IHE XDS adapté au contexte portabilité LGC

Logical: DocumentEntryPortabilite
Id: document-entry-portabilite
Title: "DocumentEntry Portabilité (LM)"
Description: """
Modèle logique d'une fiche documentaire (DocumentEntry) dans le contexte portabilité LGC.
Adapté du DocumentEntry XDS pour les spécificités de l'archive XDM hors-ligne.
"""

* entryUUID 1..1 uuid "Identifiant unique de la fiche document"
* URI 1..1 string "Chemin relatif du fichier dans le SUBSET (ex: DOC00001.XML)" """
Métadonnée clé en mode XDM. Permet au destinataire de localiser le fichier
dans l'archive sans connexion à un registre.
"""
* mimeType 1..1 string "Type MIME du document (ex: text/xml, application/pdf)"
* hash 1..1 string "Empreinte SHA-256 du fichier document"
* size 1..1 unsignedInt "Taille du fichier en octets"
* languageCode 1..1 string "Langue du document (ex: fr-FR)"
* creationTime 1..1 dateTime "Date et heure de création du document"
* serviceStartTime 1..1 dateTime "Date de début de l'acte clinique de référence"
* serviceEndTime 0..1 dateTime "Date de fin de l'acte clinique (si connue)"
* title 1..1 string "Titre du document"
* patientID 1..1 string "Matricule INS du patient (OID 1.2.250.1.213.1.4.8)"
* sourcePatientID 1..1 string "Identifiant du patient dans le système source (IPP ou INS)"
* availabilityStatus 1..1 code "Statut de disponibilité — fixé à Approved pour une archive portabilité"
* class 1..1 CodeableConcept "Classe du document"
* class from https://mos.esante.gouv.fr/NOS/JDV_J06-XdsClassCode-CISIS/FHIR/JDV-J06-XdsClassCode-CISIS (preferred)
* type 1..1 CodeableConcept "Type du document"
* type from https://mos.esante.gouv.fr/NOS/JDV_J07-XdsTypeCode-CISIS/FHIR/JDV-J07-XdsTypeCode-CISIS (preferred)
* format 1..1 CodeableConcept "Format du document"
* format from https://mos.esante.gouv.fr/NOS/JDV_J10-XdsFormatCode-CISIS/FHIR/JDV-J10-XdsFormatCode-CISIS (preferred)
* confidentiality 1..1 CodeableConcept "Niveau de confidentialité"
* confidentiality from https://mos.esante.gouv.fr/NOS/JDV_J58-ConfidentialityCode-DMP/FHIR/JDV-J58-ConfidentialityCode-DMP (preferred)
* healthcareFacilityTypeCode 1..1 CodeableConcept "Secteur d'activité"
* healthcareFacilityTypeCode from https://mos.esante.gouv.fr/NOS/JDV_J02-XdsHealthcareFacilityTypeCode-CISIS/FHIR/JDV-J02-XdsHealthcareFacilityTypeCode-CISIS (preferred)
* practiceSetting 1..1 CodeableConcept "Contexte de l'acte clinique"
* practiceSetting from https://mos.esante.gouv.fr/NOS/JDV_J04-XdsPracticeSettingCode-CISIS/FHIR/JDV-J04-XdsPracticeSettingCode-CISIS (preferred)
* author 1..* string "Auteur(s) du document (RPPS ou ADELI)"
* sourceID 1..1 oid "SIRET de l'éditeur source (repositoryUniqueId en contexte portabilité)"
