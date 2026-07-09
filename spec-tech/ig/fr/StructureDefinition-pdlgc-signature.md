# PDLGC Signature - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC Signature 

 
signature XAdES de l'archive attestant de l'imputabilité et l'intégrité des données 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [PDLGC Archive Portabilite](StructureDefinition-pdlgc-archive-portabilite.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgc-signature)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Contraintes

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(30 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

#### Contraintes

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(30 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgc-signature.csv), [Excel](../StructureDefinition-pdlgc-signature.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgc-signature",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-signature",
  "version" : "0.1.0",
  "name" : "PDLGCSignature",
  "title" : "PDLGC Signature",
  "status" : "draft",
  "date" : "2026-07-09T18:19:16+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "signature XAdES de l'archive attestant de l'imputabilité et l'intégrité des données",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgc-signature",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgc-signature",
      "path" : "pdlgc-signature",
      "short" : "PDLGC Signature",
      "definition" : "signature XAdES de l'archive attestant de l'imputabilité et l'intégrité des données"
    },
    {
      "id" : "pdlgc-signature.SignedInfo",
      "path" : "pdlgc-signature.SignedInfo",
      "short" : "Informations signées",
      "definition" : "Informations signées",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.SignedInfo.CanonicalizationMethod",
      "path" : "pdlgc-signature.SignedInfo.CanonicalizationMethod",
      "short" : "Algorithme de canonicalisation XML. Valeur recommandée : http://www.w3.org/2001/10/xml-exc-c14n#.",
      "definition" : "Algorithme de canonicalisation XML. Valeur recommandée : http://www.w3.org/2001/10/xml-exc-c14n#.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.SignedInfo.SignatureMethod",
      "path" : "pdlgc-signature.SignedInfo.SignatureMethod",
      "short" : "Algorithme de signature. Valeur recommandée : http://www.w3.org/2001/04/xmldsig-more#rsa-sha256.",
      "definition" : "Algorithme de signature. Valeur recommandée : http://www.w3.org/2001/04/xmldsig-more#rsa-sha256.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.SignedInfo.References",
      "path" : "pdlgc-signature.SignedInfo.References",
      "short" : "Références aux objets signés. Chaque référence pointe vers un fichier de l'archive chapeau ou vers un objet XAdES interne (SignedProperties).",
      "definition" : "Références aux objets signés. Chaque référence pointe vers un fichier de l'archive chapeau ou vers un objet XAdES interne (SignedProperties).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.SignedInfo.References.URI",
      "path" : "pdlgc-signature.SignedInfo.References.URI",
      "short" : "URI de la référence. Valeur fixée à #manifest",
      "definition" : "URI de la référence. Valeur fixée à #manifest",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.SignedInfo.References.DigestMethod",
      "path" : "pdlgc-signature.SignedInfo.References.DigestMethod",
      "short" : "Algorithme de hachage de la référence. Valeur recommandée : http://www.w3.org/2001/04/xmlenc#sha256",
      "definition" : "Algorithme de hachage de la référence. Valeur recommandée : http://www.w3.org/2001/04/xmlenc#sha256",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.SignedInfo.References.DigestValue",
      "path" : "pdlgc-signature.SignedInfo.References.DigestValue",
      "short" : "Empreinte base64 de l'objet référencé",
      "definition" : "Empreinte base64 de l'objet référencé",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.signatureValue",
      "path" : "pdlgc-signature.signatureValue",
      "short" : "Valeur de la signature cryptographique. Base64 de la signature calculée sur les références déclarées dans SignedInfo.",
      "definition" : "Valeur de la signature cryptographique. Base64 de la signature calculée sur les références déclarées dans SignedInfo.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.keyInfo",
      "path" : "pdlgc-signature.keyInfo",
      "short" : "Informations sur la clé de signature",
      "definition" : "Informations sur la clé de signature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.keyInfo.x509Data",
      "path" : "pdlgc-signature.keyInfo.x509Data",
      "short" : "Données du certificat X.509 du signataire",
      "definition" : "Données du certificat X.509 du signataire",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.keyInfo.x509Data.x509Certificate",
      "path" : "pdlgc-signature.keyInfo.x509Data.x509Certificate",
      "short" : "Certificat X.509 du signataire (base64 DER). Certificat délivré par une autorité de certification reconnue par le référentiel RGS.",
      "definition" : "Certificat X.509 du signataire (base64 DER). Certificat délivré par une autorité de certification reconnue par le référentiel RGS.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.keyInfo.x509Data.x509IssuerSerial",
      "path" : "pdlgc-signature.keyInfo.x509Data.x509IssuerSerial",
      "short" : "Émetteur et numéro de série du certificat",
      "definition" : "Émetteur et numéro de série du certificat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.keyInfo.x509Data.x509IssuerSerial.x509IssuerName",
      "path" : "pdlgc-signature.keyInfo.x509Data.x509IssuerSerial.x509IssuerName",
      "short" : "Nom distinctif de l'autorité de certification",
      "definition" : "Nom distinctif de l'autorité de certification",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.keyInfo.x509Data.x509IssuerSerial.x509SerialNumber",
      "path" : "pdlgc-signature.keyInfo.x509Data.x509IssuerSerial.x509SerialNumber",
      "short" : "Numéro de série du certificat",
      "definition" : "Numéro de série du certificat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties",
      "path" : "pdlgc-signature.qualifyingProperties",
      "short" : "Propriétés qualifiantes XAdES",
      "definition" : "Propriétés qualifiantes XAdES",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.signedProperties",
      "path" : "pdlgc-signature.qualifyingProperties.signedProperties",
      "short" : "Propriétés incluses dans la signature",
      "definition" : "Propriétés incluses dans la signature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.signedProperties.signingTime",
      "path" : "pdlgc-signature.qualifyingProperties.signedProperties.signingTime",
      "short" : "Date et heure de signature déclarée par le signataire (ISO 8601)",
      "definition" : "Distincte de l'horodatage qualifié porté par les UnsignedProperties\n        (XAdES-T et supérieur). Pour XAdES-B, seul signingTime est présent.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.signedProperties.signingCertificateV2",
      "path" : "pdlgc-signature.qualifyingProperties.signedProperties.signingCertificateV2",
      "short" : "Référence au certificat de signature",
      "definition" : "Lie cryptographiquement la signature au certificat du signataire.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.signedProperties.signingCertificateV2.certDigest",
      "path" : "pdlgc-signature.qualifyingProperties.signedProperties.signingCertificateV2.certDigest",
      "short" : "Empreinte du certificat",
      "definition" : "Empreinte du certificat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.signedProperties.signingCertificateV2.certDigest.digestMethod",
      "path" : "pdlgc-signature.qualifyingProperties.signedProperties.signingCertificateV2.certDigest.digestMethod",
      "short" : "Algorithme de hachage (SHA-256 recommandé)",
      "definition" : "Algorithme de hachage (SHA-256 recommandé)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.signedProperties.signingCertificateV2.certDigest.digestValue",
      "path" : "pdlgc-signature.qualifyingProperties.signedProperties.signingCertificateV2.certDigest.digestValue",
      "short" : "Empreinte base64 du certificat X.509",
      "definition" : "Empreinte base64 du certificat X.509",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.signedProperties.signedDataObjectProperties",
      "path" : "pdlgc-signature.qualifyingProperties.signedProperties.signedDataObjectProperties",
      "short" : "Propriétés des objets signés",
      "definition" : "Propriétés des objets signés",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat",
      "path" : "pdlgc-signature.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat",
      "short" : "Format des objets signés référencés",
      "definition" : "Format des objets signés référencés",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.objectReference",
      "path" : "pdlgc-signature.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.objectReference",
      "short" : "Référence à l'élément Reference concerné",
      "definition" : "Référence à l'élément Reference concerné",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.mimeType",
      "path" : "pdlgc-signature.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.mimeType",
      "short" : "Type MIME de l'objet signé",
      "definition" : "Type MIME de l'objet signé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.description",
      "path" : "pdlgc-signature.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.description",
      "short" : "Description de l'objet signé",
      "definition" : "Description de l'objet signé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.unsignedProperties",
      "path" : "pdlgc-signature.qualifyingProperties.unsignedProperties",
      "short" : "Propriétés non incluses dans la signature (XAdES-T et LT)",
      "definition" : "Propriétés non incluses dans la signature (XAdES-T et LT)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.unsignedProperties.signatureTimeStamp",
      "path" : "pdlgc-signature.qualifyingProperties.unsignedProperties.signatureTimeStamp",
      "short" : "Jeton d'horodatage qualifié (XAdES-T minimum). Horodatage de la valeur de signature par une Autorité d'Horodatage\n        qualifiée eIDAS. Garantit la date de signature de manière opposable, indépendamment de la déclaration signingTime du signataire.",
      "definition" : "Jeton d'horodatage qualifié (XAdES-T minimum). Horodatage de la valeur de signature par une Autorité d'Horodatage\n        qualifiée eIDAS. Garantit la date de signature de manière opposable, indépendamment de la déclaration signingTime du signataire.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.unsignedProperties.signatureTimeStamp.canonicalizationMethod",
      "path" : "pdlgc-signature.qualifyingProperties.unsignedProperties.signatureTimeStamp.canonicalizationMethod",
      "short" : "Algorithme de canonicalisation appliqué avant horodatage",
      "definition" : "Algorithme de canonicalisation appliqué avant horodatage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.unsignedProperties.signatureTimeStamp.encapsulatedTimeStamp",
      "path" : "pdlgc-signature.qualifyingProperties.unsignedProperties.signatureTimeStamp.encapsulatedTimeStamp",
      "short" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "definition" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.unsignedProperties.certificateValues",
      "path" : "pdlgc-signature.qualifyingProperties.unsignedProperties.certificateValues",
      "short" : "Valeurs des certificats de la chaîne (XAdES-LT). Certificats de la chaîne de confiance embarqués dans la signature pour permettre la validation hors ligne après expiration.",
      "definition" : "Valeurs des certificats de la chaîne (XAdES-LT). Certificats de la chaîne de confiance embarqués dans la signature pour permettre la validation hors ligne après expiration.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.unsignedProperties.certificateValues.encapsulatedX509Certificate",
      "path" : "pdlgc-signature.qualifyingProperties.unsignedProperties.certificateValues.encapsulatedX509Certificate",
      "short" : "Certificat X.509 de la chaîne (base64 DER)",
      "definition" : "Certificat X.509 de la chaîne (base64 DER)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.unsignedProperties.revocationValues",
      "path" : "pdlgc-signature.qualifyingProperties.unsignedProperties.revocationValues",
      "short" : "Données de révocation (XAdES-LT). Réponses OCSP ou listes CRL embarquées dans la signature.",
      "definition" : "Données de révocation (XAdES-LT). Réponses OCSP ou listes CRL embarquées dans la signature.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.unsignedProperties.revocationValues.ocspValues",
      "path" : "pdlgc-signature.qualifyingProperties.unsignedProperties.revocationValues.ocspValues",
      "short" : "Réponses OCSP encodées en base64",
      "definition" : "Réponses OCSP encodées en base64",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.qualifyingProperties.unsignedProperties.revocationValues.crlValues",
      "path" : "pdlgc-signature.qualifyingProperties.unsignedProperties.revocationValues.crlValues",
      "short" : "Listes CRL encodées en base64",
      "definition" : "Listes CRL encodées en base64",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object",
      "path" : "pdlgc-signature.Object",
      "short" : "Périmètre des objets couverts par la signature",
      "definition" : "Périmètre des objets couverts par la signature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.Manifest",
      "path" : "pdlgc-signature.Object.Manifest",
      "short" : "Périmètre des objets couverts par la signature. Id fixé à manifest",
      "definition" : "Périmètre des objets couverts par la signature. Id fixé à manifest",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.Manifest.Reference",
      "path" : "pdlgc-signature.Object.Manifest.Reference",
      "short" : "Références aux objets signés. Chaque référence pointe vers une archive zip Patient ou transverse incluse dans l'archive de Portabilité.",
      "definition" : "Références aux objets signés. Chaque référence pointe vers une archive zip Patient ou transverse incluse dans l'archive de Portabilité.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.Manifest.Reference.Uri",
      "path" : "pdlgc-signature.Object.Manifest.Reference.Uri",
      "short" : "URI de la référence",
      "definition" : "URI de la référence",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.Manifest.Reference.DigestMethod",
      "path" : "pdlgc-signature.Object.Manifest.Reference.DigestMethod",
      "short" : "Algorithme de hachage de la référence. Valeur recommandée : http://www.w3.org/2001/04/xmlenc#sha256",
      "definition" : "Algorithme de hachage de la référence. Valeur recommandée : http://www.w3.org/2001/04/xmlenc#sha256",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.Manifest.Reference.DigestValue",
      "path" : "pdlgc-signature.Object.Manifest.Reference.DigestValue",
      "short" : "Empreinte base64 de l'objet référencé",
      "definition" : "Empreinte base64 de l'objet référencé",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
