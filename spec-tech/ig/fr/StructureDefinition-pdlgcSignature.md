# PDLGC Signature - Portabilité des Données LGC v0.1.0

## Modèle logique: PDLGC Signature 

 
signature XAdES de l'archive attestant de l'imputabilité et l'intégrité des données 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [PDLGC Archive Portabilite](StructureDefinition-pdlgcArchivePortabilite.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.pdlgc|current/StructureDefinition/pdlgcSignature)

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

Obligatoire : 0 élément(53 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

#### Contraintes

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(53 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-pdlgcSignature.csv), [Excel](../StructureDefinition-pdlgcSignature.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pdlgcSignature",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcSignature",
  "version" : "0.1.0",
  "name" : "PDLGCSignature",
  "title" : "PDLGC Signature",
  "status" : "draft",
  "date" : "2026-07-27T13:36:25+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/pdlgc/StructureDefinition/pdlgcSignature",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "pdlgcSignature",
      "path" : "pdlgcSignature",
      "short" : "PDLGC Signature",
      "definition" : "signature XAdES de l'archive attestant de l'imputabilité et l'intégrité des données"
    },
    {
      "id" : "pdlgcSignature.signedInfo",
      "path" : "pdlgcSignature.signedInfo",
      "short" : "Informations couvertes par la signature",
      "definition" : "Informations couvertes par la signature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.signedInfo.canonicalizationMethod",
      "path" : "pdlgcSignature.signedInfo.canonicalizationMethod",
      "short" : "Algorithme de canonicalisation XML. Valeur recommandée : http://www.w3.org/2001/10/xml-exc-c14n#.",
      "definition" : "Algorithme de canonicalisation XML. Valeur recommandée : http://www.w3.org/2001/10/xml-exc-c14n#.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgcSignature.signedInfo.signatureMethod",
      "path" : "pdlgcSignature.signedInfo.signatureMethod",
      "short" : "Algorithme cryptographique utilisé pour signer. Valeur recommandée : http://www.w3.org/2001/04/xmldsig-more#rsa-sha256.",
      "definition" : "Algorithme cryptographique utilisé pour signer. Valeur recommandée : http://www.w3.org/2001/04/xmldsig-more#rsa-sha256.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgcSignature.signedInfo.references",
      "path" : "pdlgcSignature.signedInfo.references",
      "short" : "Références couvertes par la signature. La première référence pointe vers le Manifest (#Manifest). La seconde référence pointe vers les SignedProperties XAdES (#signedProperties).",
      "definition" : "Références couvertes par la signature. La première référence pointe vers le Manifest (#Manifest). La seconde référence pointe vers les SignedProperties XAdES (#signedProperties).",
      "min" : 2,
      "max" : "2",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.signedInfo.references.uri",
      "path" : "pdlgcSignature.signedInfo.references.uri",
      "short" : "URI de l'objet signé. (#manifest ou #signedProperties)",
      "definition" : "URI de l'objet signé. (#manifest ou #signedProperties)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgcSignature.signedInfo.references.type",
      "path" : "pdlgcSignature.signedInfo.references.type",
      "short" : "Type de la référence",
      "definition" : "Type de la référence",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.signedInfo.references.digestMethod",
      "path" : "pdlgcSignature.signedInfo.references.digestMethod",
      "short" : "Algorithme de hachage de la référence. Valeur recommandée : http://www.w3.org/2001/04/xmlenc#sha256",
      "definition" : "Algorithme de hachage de la référence. Valeur recommandée : http://www.w3.org/2001/04/xmlenc#sha256",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.signedInfo.references.digestValue",
      "path" : "pdlgcSignature.signedInfo.references.digestValue",
      "short" : "Empreinte base64 de l'objet référencé",
      "definition" : "Empreinte base64 de l'objet référencé",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "pdlgcSignature.signatureValue",
      "path" : "pdlgcSignature.signatureValue",
      "short" : "Valeur de la signature cryptographique. Base64 de la signature calculée sur les références déclarées dans SignedInfo.",
      "definition" : "Valeur de la signature cryptographique. Base64 de la signature calculée sur les références déclarées dans SignedInfo.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "pdlgcSignature.keyInfo",
      "path" : "pdlgcSignature.keyInfo",
      "short" : "Informations sur la clé de signature",
      "definition" : "Informations sur la clé de signature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.keyInfo.x509Data",
      "path" : "pdlgcSignature.keyInfo.x509Data",
      "short" : "Données du certificat X.509 du signataire",
      "definition" : "Données du certificat X.509 du signataire",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.keyInfo.x509Data.x509Certificate",
      "path" : "pdlgcSignature.keyInfo.x509Data.x509Certificate",
      "short" : "Certificat X.509 du signataire (base64 DER). Certificat délivré par une autorité de certification reconnue par le référentiel RGS.",
      "definition" : "Certificat X.509 du signataire (base64 DER). Certificat délivré par une autorité de certification reconnue par le référentiel RGS.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "pdlgcSignature.keyInfo.x509Data.x509IssuerSerial",
      "path" : "pdlgcSignature.keyInfo.x509Data.x509IssuerSerial",
      "short" : "Émetteur et numéro de série du certificat",
      "definition" : "Émetteur et numéro de série du certificat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.keyInfo.x509Data.x509IssuerSerial.x509IssuerName",
      "path" : "pdlgcSignature.keyInfo.x509Data.x509IssuerSerial.x509IssuerName",
      "short" : "Nom distinctif de l'autorité de certification",
      "definition" : "Nom distinctif de l'autorité de certification",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.keyInfo.x509Data.x509IssuerSerial.x509SerialNumber",
      "path" : "pdlgcSignature.keyInfo.x509Data.x509IssuerSerial.x509SerialNumber",
      "short" : "Numéro de série du certificat",
      "definition" : "Numéro de série du certificat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object",
      "path" : "pdlgcSignature.object",
      "short" : "Périmètre des objets couverts par la signature",
      "definition" : "Périmètre des objets couverts par la signature",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.manifest",
      "path" : "pdlgcSignature.object.manifest",
      "short" : "Périmètre des objets couverts par la signature. Id fixé à manifest",
      "definition" : "Périmètre des objets couverts par la signature. Id fixé à manifest",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.manifest.id",
      "path" : "pdlgcSignature.object.manifest.id",
      "short" : "Valeur fixée à 'manifest'.",
      "definition" : "Valeur fixée à 'manifest'.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.manifest.reference",
      "path" : "pdlgcSignature.object.manifest.reference",
      "short" : "Références aux objets signés. Chaque référence pointe vers un fichier constitutif du périmètre signé de l'archive de portabilité (MANIFEST.XML, archives XDM patient et archive transverse).",
      "definition" : "Références aux objets signés. Chaque référence pointe vers un fichier constitutif du périmètre signé de l'archive de portabilité (MANIFEST.XML, archives XDM patient et archive transverse).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.manifest.reference.uri",
      "path" : "pdlgcSignature.object.manifest.reference.uri",
      "short" : "URI de la référence",
      "definition" : "URI de la référence",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.manifest.reference.digestMethod",
      "path" : "pdlgcSignature.object.manifest.reference.digestMethod",
      "short" : "Algorithme de hachage de la référence. Valeur recommandée : http://www.w3.org/2001/04/xmlenc#sha256",
      "definition" : "Algorithme de hachage de la référence. Valeur recommandée : http://www.w3.org/2001/04/xmlenc#sha256",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.manifest.reference.digestValue",
      "path" : "pdlgcSignature.object.manifest.reference.digestValue",
      "short" : "Empreinte base64 de l'objet référencé",
      "definition" : "Empreinte base64 de l'objet référencé",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties",
      "path" : "pdlgcSignature.object.qualifyingProperties",
      "short" : "Propriétés qualifiantes XAdES",
      "definition" : "Propriétés qualifiantes XAdES",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.target",
      "path" : "pdlgcSignature.object.qualifyingProperties.target",
      "short" : "Signature concernée",
      "definition" : "Signature concernée",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties",
      "short" : "Propriétés incluses dans la signature",
      "definition" : "Propriétés incluses dans la signature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.id",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.id",
      "short" : "Valeur fixée à 'signedProperties'.",
      "definition" : "Valeur fixée à 'signedProperties'.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties",
      "short" : "Propriétés de la signature",
      "definition" : "Propriétés de la signature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingTime",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingTime",
      "short" : "Date et heure de signature déclarée par le signataire (ISO 8601)",
      "definition" : "Distincte de l'horodatage qualifié porté par les UnsignedProperties\n          (XAdES-T et supérieur). Pour XAdES-B, seul signingTime est présent.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2",
      "short" : "Référence au certificat de signature",
      "definition" : "Lie cryptographiquement la signature au certificat du signataire.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.certDigest",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.certDigest",
      "short" : "Empreinte du certificat",
      "definition" : "Empreinte du certificat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.certDigest.digestMethod",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.certDigest.digestMethod",
      "short" : "Algorithme de hachage (SHA-256 recommandé)",
      "definition" : "Algorithme de hachage (SHA-256 recommandé)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.certDigest.digestValue",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.certDigest.digestValue",
      "short" : "Empreinte base64 du certificat X.509",
      "definition" : "Empreinte base64 du certificat X.509",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.issuerSerial",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.issuerSerial",
      "short" : "Informations d'identification du certificat.",
      "definition" : "Informations d'identification du certificat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.issuerSerial.x509IssuerName",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.issuerSerial.x509IssuerName",
      "short" : "Nom de l'autorité de certification.",
      "definition" : "Nom de l'autorité de certification.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.issuerSerial.x509SerialNumber",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.issuerSerial.x509SerialNumber",
      "short" : "Numéro de série du certificat.",
      "definition" : "Numéro de série du certificat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier",
      "short" : "Politique de signature appliquée.",
      "definition" : "Politique de signature appliquée.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier.signaturePolicyId",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier.signaturePolicyId",
      "short" : "Politique de signature explicitement identifiée.",
      "definition" : "Politique de signature explicitement identifiée.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier.signaturePolicyId.sigPolicyId",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier.signaturePolicyId.sigPolicyId",
      "short" : "Identifiant de la politique.",
      "definition" : "Identifiant de la politique.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier.signaturePolicyId.sigPolicyHash",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier.signaturePolicyId.sigPolicyHash",
      "short" : "Empreinte de la politique.",
      "definition" : "Empreinte de la politique.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier.signaturePolicyId.sigPolicyHash.digestMethod",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier.signaturePolicyId.sigPolicyHash.digestMethod",
      "short" : "Algorithme de calcul de l'empreinte.",
      "definition" : "Algorithme de calcul de l'empreinte.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier.signaturePolicyId.sigPolicyHash.digestValue",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier.signaturePolicyId.sigPolicyHash.digestValue",
      "short" : "Empreinte de la politique.",
      "definition" : "Empreinte de la politique.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier.signaturePolicyImplied",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signaturePolicyIdentifier.signaturePolicyImplied",
      "short" : "Indique que la politique de signature est implicite.",
      "definition" : "Indique que la politique de signature est implicite.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signatureProductionPlace",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signatureProductionPlace",
      "short" : "Lieu déclaré de création de la signature.",
      "definition" : "Lieu déclaré de création de la signature.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signatureProductionPlace.city",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signatureProductionPlace.city",
      "short" : "Ville.",
      "definition" : "Ville.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signatureProductionPlace.stateOrProvince",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signatureProductionPlace.stateOrProvince",
      "short" : "État ou région.",
      "definition" : "État ou région.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signatureProductionPlace.postalCode",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signatureProductionPlace.postalCode",
      "short" : "Code postal.",
      "definition" : "Code postal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signatureProductionPlace.countryName",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signatureProductionPlace.countryName",
      "short" : "Pays.",
      "definition" : "Pays.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signerRole",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signerRole",
      "short" : "Rôle déclaré du signataire.",
      "definition" : "Rôle déclaré du signataire.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signerRole.claimedRoles",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signerRole.claimedRoles",
      "short" : "Rôles déclarés par le signataire.",
      "definition" : "Rôles déclarés par le signataire.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signerRole.claimedRoles.claimedRole",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signerRole.claimedRoles.claimedRole",
      "short" : "Libellé du rôle déclaré.",
      "definition" : "Libellé du rôle déclaré.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signerRole.certifiedRoles",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signerRole.certifiedRoles",
      "short" : "Rôles certifiés.",
      "definition" : "Rôles certifiés.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signerRole.certifiedRoles.certifiedRole",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedSignatureProperties.signingCertificateV2.signerRole.certifiedRoles.certifiedRole",
      "short" : "Rôle certifié.",
      "definition" : "Rôle certifié.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties",
      "short" : "Propriétés des objets signés",
      "definition" : "Propriétés des objets signés",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat",
      "short" : "Format des objets signés référencés",
      "definition" : "Format des objets signés référencés",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.objectReference",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.objectReference",
      "short" : "Référence à l'élément Reference concerné",
      "definition" : "Référence à l'élément Reference concerné",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.mimeType",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.mimeType",
      "short" : "Type MIME de l'objet signé",
      "definition" : "Type MIME de l'objet signé",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.description",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.description",
      "short" : "Description de l'objet signé",
      "definition" : "Description de l'objet signé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.objectIdentifier",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.objectIdentifier",
      "short" : "Identifiant normalisé du type d'objet.",
      "definition" : "Identifiant normalisé du type d'objet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.objectIdentifier.identifier",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.objectIdentifier.identifier",
      "short" : "Identifiant unique.",
      "definition" : "Identifiant unique.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.objectIdentifier.description",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.objectIdentifier.description",
      "short" : "Description de l'identifiant.",
      "definition" : "Description de l'identifiant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.encoding",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.dataObjectFormat.encoding",
      "short" : "Encodage utilisé pour l'objet.",
      "definition" : "Encodage utilisé pour l'objet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.commitmentTypeIndication",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.commitmentTypeIndication",
      "short" : "Engagement pris par le signataire vis-à-vis de l'objet signé.",
      "definition" : "Engagement pris par le signataire vis-à-vis de l'objet signé.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.commitmentTypeIndication.commitmentTypeId",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.commitmentTypeIndication.commitmentTypeId",
      "short" : "Identifiant du type d'engagement.",
      "definition" : "Identifiant du type d'engagement.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.commitmentTypeIndication.objectReference",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.commitmentTypeIndication.objectReference",
      "short" : "Références des objets concernés.",
      "definition" : "Références des objets concernés.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.commitmentTypeIndication.allSignedDataObjects",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.commitmentTypeIndication.allSignedDataObjects",
      "short" : "Indique que l'engagement s'applique à tous les objets signés.",
      "definition" : "Indique que l'engagement s'applique à tous les objets signés.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.commitmentTypeIndication.commitmentTypeQualifiers",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.commitmentTypeIndication.commitmentTypeQualifiers",
      "short" : "Informations complémentaires relatives à l'engagement.",
      "definition" : "Informations complémentaires relatives à l'engagement.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.allDataObjectsTimeStamp",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.allDataObjectsTimeStamp",
      "short" : "Horodatage portant sur l'ensemble des objets signés.",
      "definition" : "Horodatage portant sur l'ensemble des objets signés.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.allDataObjectsTimeStamp.canonicalizationMethod",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.allDataObjectsTimeStamp.canonicalizationMethod",
      "short" : "Algorithme de canonicalisation.",
      "definition" : "Algorithme de canonicalisation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.allDataObjectsTimeStamp.encapsulatedTimeStamp",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.allDataObjectsTimeStamp.encapsulatedTimeStamp",
      "short" : "Jeton d'horodatage RFC 3161.",
      "definition" : "Jeton d'horodatage RFC 3161.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.individualDataObjectsTimeStamp",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.individualDataObjectsTimeStamp",
      "short" : "Horodatage portant sur un ou plusieurs objets signés.",
      "definition" : "Horodatage portant sur un ou plusieurs objets signés.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.individualDataObjectsTimeStamp.objectReference",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.individualDataObjectsTimeStamp.objectReference",
      "short" : "Références des objets concernés.",
      "definition" : "Références des objets concernés.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.individualDataObjectsTimeStamp.canonicalizationMethod",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.individualDataObjectsTimeStamp.canonicalizationMethod",
      "short" : "Algorithme de canonicalisation.",
      "definition" : "Algorithme de canonicalisation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.individualDataObjectsTimeStamp.encapsulatedTimeStamp",
      "path" : "pdlgcSignature.object.qualifyingProperties.signedProperties.signedDataObjectProperties.individualDataObjectsTimeStamp.encapsulatedTimeStamp",
      "short" : "Jeton d'horodatage RFC 3161.",
      "definition" : "Jeton d'horodatage RFC 3161.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties",
      "short" : "Propriétés non incluses dans la signature (XAdES-T et LT)",
      "definition" : "Propriétés non incluses dans la signature (XAdES-T et LT)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.id",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.id",
      "short" : "Valeur fixée à 'unsignedProperties'.",
      "definition" : "Valeur fixée à 'unsignedProperties'.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties",
      "short" : "Propriétés non incluses dans la signature",
      "definition" : "Propriétés non incluses dans la signature",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.counterSignature",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.counterSignature",
      "short" : "Contre-signatures appliquées à la signature.",
      "definition" : "Contre-signatures appliquées à la signature.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.counterSignature.signature",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.counterSignature.signature",
      "short" : "Signature de contre-signature.",
      "definition" : "Signature de contre-signature.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.signatureTimeStamp",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.signatureTimeStamp",
      "short" : "Jeton d'horodatage qualifié (XAdES-T minimum). Horodatage de la valeur de signature par une Autorité d'Horodatage\n            qualifiée eIDAS. Garantit la date de signature de manière opposable, indépendamment de la déclaration signingTime du signataire.",
      "definition" : "Jeton d'horodatage qualifié (XAdES-T minimum). Horodatage de la valeur de signature par une Autorité d'Horodatage\n            qualifiée eIDAS. Garantit la date de signature de manière opposable, indépendamment de la déclaration signingTime du signataire.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.signatureTimeStamp.canonicalizationMethod",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.signatureTimeStamp.canonicalizationMethod",
      "short" : "Algorithme de canonicalisation appliqué avant horodatage",
      "definition" : "Algorithme de canonicalisation appliqué avant horodatage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.signatureTimeStamp.encapsulatedTimeStamp",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.signatureTimeStamp.encapsulatedTimeStamp",
      "short" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "definition" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeCertificateRefs",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeCertificateRefs",
      "short" : "Références vers les certificats nécessaires à la validation.",
      "definition" : "Références vers les certificats nécessaires à la validation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeCertificateRefs.certRefs",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeCertificateRefs.certRefs",
      "short" : "Référence vers un certificat.",
      "definition" : "Référence vers un certificat.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeCertificateRefs.certRefs.certDigest",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeCertificateRefs.certRefs.certDigest",
      "short" : "Empreinte du certificat",
      "definition" : "Empreinte du certificat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeCertificateRefs.certRefs.certDigest.digestMethod",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeCertificateRefs.certRefs.certDigest.digestMethod",
      "short" : "Algorithme de hachage (SHA-256 recommandé)",
      "definition" : "Algorithme de hachage (SHA-256 recommandé)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeCertificateRefs.certRefs.certDigest.digestValue",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeCertificateRefs.certRefs.certDigest.digestValue",
      "short" : "Empreinte base64 du certificat X.509",
      "definition" : "Empreinte base64 du certificat X.509",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeRevocationRefs",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeRevocationRefs",
      "short" : "Références vers les informations de révocation.",
      "definition" : "Références vers les informations de révocation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeRevocationRefs.ocsPRefs",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeRevocationRefs.ocsPRefs",
      "short" : "Références vers des réponses OCSP.",
      "definition" : "Références vers des réponses OCSP.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeRevocationRefs.crlRefs",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.completeRevocationRefs.crlRefs",
      "short" : "Références vers des listes de révocation.",
      "definition" : "Références vers des listes de révocation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.attributeCertificateRefs",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.attributeCertificateRefs",
      "short" : "Références vers des certificats d'attribut.",
      "definition" : "Références vers des certificats d'attribut.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.attributeRevocationRefs",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.attributeRevocationRefs",
      "short" : "Références vers les informations de révocation des certificats d'attribut.",
      "definition" : "Références vers les informations de révocation des certificats d'attribut.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.sigAndRefsTimeStamp",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.sigAndRefsTimeStamp",
      "short" : "Horodatage couvrant la signature et les références de validation.",
      "definition" : "Horodatage couvrant la signature et les références de validation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.sigAndRefsTimeStamp.encapsulatedTimeStamp",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.sigAndRefsTimeStamp.encapsulatedTimeStamp",
      "short" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "definition" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.refsOnlyTimeStamp",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.refsOnlyTimeStamp",
      "short" : "Horodatage couvrant uniquement les références de validation.",
      "definition" : "Horodatage couvrant uniquement les références de validation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.refsOnlyTimeStamp.encapsulatedTimeStamp",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.refsOnlyTimeStamp.encapsulatedTimeStamp",
      "short" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "definition" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.certificateValues",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.certificateValues",
      "short" : "Valeurs des certificats de la chaîne (XAdES-LT). Certificats de la chaîne de confiance embarqués dans la signature pour permettre la validation hors ligne après expiration.",
      "definition" : "Valeurs des certificats de la chaîne (XAdES-LT). Certificats de la chaîne de confiance embarqués dans la signature pour permettre la validation hors ligne après expiration.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.certificateValues.encapsulatedX509Certificate",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.certificateValues.encapsulatedX509Certificate",
      "short" : "Certificat X.509 de la chaîne (base64 DER)",
      "definition" : "Certificat X.509 de la chaîne (base64 DER)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.revocationValues",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.revocationValues",
      "short" : "Données de révocation (XAdES-LT). Réponses OCSP ou listes CRL embarquées dans la signature.",
      "definition" : "Données de révocation (XAdES-LT). Réponses OCSP ou listes CRL embarquées dans la signature.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.revocationValues.ocspValues",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.revocationValues.ocspValues",
      "short" : "Réponses OCSP encodées en base64",
      "definition" : "Réponses OCSP encodées en base64",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.revocationValues.crlValues",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.revocationValues.crlValues",
      "short" : "Listes CRL encodées en base64",
      "definition" : "Listes CRL encodées en base64",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.archiveTimeStamp",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.archiveTimeStamp",
      "short" : "Horodatage garantissant la validité de la signature sur le long terme.",
      "definition" : "Horodatage garantissant la validité de la signature sur le long terme.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.archiveTimeStamp.encapsulatedTimeStamp",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedSignatureProperties.archiveTimeStamp.encapsulatedTimeStamp",
      "short" : "Jeton d'horodatage.",
      "definition" : "Jeton d'horodatage.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedDataObjectProperties",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedDataObjectProperties",
      "short" : "Propriétés non signées relatives aux objets couverts par la signature.",
      "definition" : "Propriétés non signées relatives aux objets couverts par la signature.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedDataObjectProperties.unsignedDataObjectProperty",
      "path" : "pdlgcSignature.object.qualifyingProperties.unsignedProperties.unsignedDataObjectProperties.unsignedDataObjectProperty",
      "short" : "Propriétés non signées relatives aux objets couverts par la signature.",
      "definition" : "Propriétés non signées relatives aux objets couverts par la signature.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
