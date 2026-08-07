Logical: PDLGCContactPortabilite
Id: pdlgcContactPortabilite
Title: "PDLGC Contact Portabilite"
Description: "PDLGC Contact Portabilite"

* name 1..1 string "Nom de la personne identifiée comme Point de contact Portabilité de l'éditeur"
* telecom 1..* BackboneElement "Moyen de communication"
  * type 1..1 code "type de moyen de contact. TEL | EMAIL | FAX"
  * type from VS_PDLGC_TelecomType (required)
  * value 1..1 string "valeur du contact (numéro de télépone, adresse email, numéro de fax)"