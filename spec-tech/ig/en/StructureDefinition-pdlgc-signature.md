# PDLGC Signature - Portabilité des Données LGC v0.1.0

## Logical Model: PDLGC Signature 

 
signature XAdES de l'archive attestant de l'imputabilité et l'intégrité des données 

**Usages:**

* Use this Logical Model: [PDLGC Archive Portabilite](StructureDefinition-pdlgc-archive-portabilite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.pdlgc|current/StructureDefinition/StructureDefinition-pdlgc-signature.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-pdlgc-signature.csv), [Excel](../StructureDefinition-pdlgc-signature.xlsx) 



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
  "date" : "2026-07-16T21:31:30+00:00",
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
      "short" : "Informations couvertes par la signature",
      "definition" : "Informations couvertes par la signature",
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
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgc-signature.SignedInfo.SignatureMethod",
      "path" : "pdlgc-signature.SignedInfo.SignatureMethod",
      "short" : "Algorithme cryptographique utilisé pour signer. Valeur recommandée : http://www.w3.org/2001/04/xmldsig-more#rsa-sha256.",
      "definition" : "Algorithme cryptographique utilisé pour signer. Valeur recommandée : http://www.w3.org/2001/04/xmldsig-more#rsa-sha256.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgc-signature.SignedInfo.References",
      "path" : "pdlgc-signature.SignedInfo.References",
      "short" : "Références couvertes par la signature. La première référence pointe vers le Manifest (#Manifest). La seconde référence pointe vers les SignedProperties XAdES (#signedProperties).",
      "definition" : "Références couvertes par la signature. La première référence pointe vers le Manifest (#Manifest). La seconde référence pointe vers les SignedProperties XAdES (#signedProperties).",
      "min" : 2,
      "max" : "2",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.SignedInfo.References.URI",
      "path" : "pdlgc-signature.SignedInfo.References.URI",
      "short" : "URI de l'objet signé. (#manifest ou #signedProperties)",
      "definition" : "URI de l'objet signé. (#manifest ou #signedProperties)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgc-signature.SignedInfo.References.Type",
      "path" : "pdlgc-signature.SignedInfo.References.Type",
      "short" : "Type de la référence",
      "definition" : "Type de la référence",
      "min" : 0,
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
        "code" : "base64Binary"
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
        "code" : "base64Binary"
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
        "code" : "base64Binary"
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
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.Manifest.Id",
      "path" : "pdlgc-signature.Object.Manifest.Id",
      "short" : "Valeur fixée à 'manifest'.",
      "definition" : "Valeur fixée à 'manifest'.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.Manifest.Reference",
      "path" : "pdlgc-signature.Object.Manifest.Reference",
      "short" : "Références aux objets signés. Chaque référence pointe vers un fichier constitutif du périmètre signé de l'archive de portabilité (MANIFEST.XML, archives XDM patient et archive transverse).",
      "definition" : "Références aux objets signés. Chaque référence pointe vers un fichier constitutif du périmètre signé de l'archive de portabilité (MANIFEST.XML, archives XDM patient et archive transverse).",
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
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties",
      "path" : "pdlgc-signature.Object.QualifyingProperties",
      "short" : "Propriétés qualifiantes XAdES",
      "definition" : "Propriétés qualifiantes XAdES",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.Target",
      "path" : "pdlgc-signature.Object.QualifyingProperties.Target",
      "short" : "Signature concernée",
      "definition" : "Signature concernée",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties",
      "short" : "Propriétés incluses dans la signature",
      "definition" : "Propriétés incluses dans la signature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.Id",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.Id",
      "short" : "Valeur fixée à 'signedProperties'.",
      "definition" : "Valeur fixée à 'signedProperties'.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties",
      "short" : "Propriétés de la signature",
      "definition" : "Propriétés de la signature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningTime",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningTime",
      "short" : "Date et heure de signature déclarée par le signataire (ISO 8601)",
      "definition" : "Distincte de l'horodatage qualifié porté par les UnsignedProperties\n          (XAdES-T et supérieur). Pour XAdES-B, seul signingTime est présent.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2",
      "short" : "Référence au certificat de signature",
      "definition" : "Lie cryptographiquement la signature au certificat du signataire.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.CertDigest",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.CertDigest",
      "short" : "Empreinte du certificat",
      "definition" : "Empreinte du certificat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.CertDigest.DigestMethod",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.CertDigest.DigestMethod",
      "short" : "Algorithme de hachage (SHA-256 recommandé)",
      "definition" : "Algorithme de hachage (SHA-256 recommandé)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.CertDigest.DigestValue",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.CertDigest.DigestValue",
      "short" : "Empreinte base64 du certificat X.509",
      "definition" : "Empreinte base64 du certificat X.509",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.IssuerSerial",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.IssuerSerial",
      "short" : "Informations d'identification du certificat.",
      "definition" : "Informations d'identification du certificat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.IssuerSerial.X509IssuerName",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.IssuerSerial.X509IssuerName",
      "short" : "Nom de l'autorité de certification.",
      "definition" : "Nom de l'autorité de certification.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.IssuerSerial.X509SerialNumber",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.IssuerSerial.X509SerialNumber",
      "short" : "Numéro de série du certificat.",
      "definition" : "Numéro de série du certificat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier",
      "short" : "Politique de signature appliquée.",
      "definition" : "Politique de signature appliquée.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier.SignaturePolicyId",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier.SignaturePolicyId",
      "short" : "Politique de signature explicitement identifiée.",
      "definition" : "Politique de signature explicitement identifiée.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier.SignaturePolicyId.SigPolicyId",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier.SignaturePolicyId.SigPolicyId",
      "short" : "Identifiant de la politique.",
      "definition" : "Identifiant de la politique.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier.SignaturePolicyId.SigPolicyHash",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier.SignaturePolicyId.SigPolicyHash",
      "short" : "Empreinte de la politique.",
      "definition" : "Empreinte de la politique.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier.SignaturePolicyId.SigPolicyHash.DigestMethod",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier.SignaturePolicyId.SigPolicyHash.DigestMethod",
      "short" : "Algorithme de calcul de l'empreinte.",
      "definition" : "Algorithme de calcul de l'empreinte.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier.SignaturePolicyId.SigPolicyHash.DigestValue",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier.SignaturePolicyId.SigPolicyHash.DigestValue",
      "short" : "Empreinte de la politique.",
      "definition" : "Empreinte de la politique.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier.SignaturePolicyImplied",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignaturePolicyIdentifier.SignaturePolicyImplied",
      "short" : "Indique que la politique de signature est implicite.",
      "definition" : "Indique que la politique de signature est implicite.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignatureProductionPlace",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignatureProductionPlace",
      "short" : "Lieu déclaré de création de la signature.",
      "definition" : "Lieu déclaré de création de la signature.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignatureProductionPlace.City",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignatureProductionPlace.City",
      "short" : "Ville.",
      "definition" : "Ville.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignatureProductionPlace.StateOrProvince",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignatureProductionPlace.StateOrProvince",
      "short" : "État ou région.",
      "definition" : "État ou région.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignatureProductionPlace.PostalCode",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignatureProductionPlace.PostalCode",
      "short" : "Code postal.",
      "definition" : "Code postal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignatureProductionPlace.CountryName",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignatureProductionPlace.CountryName",
      "short" : "Pays.",
      "definition" : "Pays.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignerRole",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignerRole",
      "short" : "Rôle déclaré du signataire.",
      "definition" : "Rôle déclaré du signataire.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignerRole.ClaimedRoles",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignerRole.ClaimedRoles",
      "short" : "Rôles déclarés par le signataire.",
      "definition" : "Rôles déclarés par le signataire.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignerRole.ClaimedRoles.ClaimedRole",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignerRole.ClaimedRoles.ClaimedRole",
      "short" : "Libellé du rôle déclaré.",
      "definition" : "Libellé du rôle déclaré.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignerRole.CertifiedRoles",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignerRole.CertifiedRoles",
      "short" : "Rôles certifiés.",
      "definition" : "Rôles certifiés.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignerRole.CertifiedRoles.CertifiedRole",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedSignatureProperties.SigningCertificateV2.SignerRole.CertifiedRoles.CertifiedRole",
      "short" : "Rôle certifié.",
      "definition" : "Rôle certifié.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties",
      "short" : "Propriétés des objets signés",
      "definition" : "Propriétés des objets signés",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat",
      "short" : "Format des objets signés référencés",
      "definition" : "Format des objets signés référencés",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.ObjectReference",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.ObjectReference",
      "short" : "Référence à l'élément Reference concerné",
      "definition" : "Référence à l'élément Reference concerné",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.MimeType",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.MimeType",
      "short" : "Type MIME de l'objet signé",
      "definition" : "Type MIME de l'objet signé",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.Description",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.Description",
      "short" : "Description de l'objet signé",
      "definition" : "Description de l'objet signé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.ObjectIdentifier",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.ObjectIdentifier",
      "short" : "Identifiant normalisé du type d'objet.",
      "definition" : "Identifiant normalisé du type d'objet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.ObjectIdentifier.Identifier",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.ObjectIdentifier.Identifier",
      "short" : "Identifiant unique.",
      "definition" : "Identifiant unique.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.ObjectIdentifier.Description",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.ObjectIdentifier.Description",
      "short" : "Description de l'identifiant.",
      "definition" : "Description de l'identifiant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.Encoding",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.DataObjectFormat.Encoding",
      "short" : "Encodage utilisé pour l'objet.",
      "definition" : "Encodage utilisé pour l'objet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.CommitmentTypeIndication",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.CommitmentTypeIndication",
      "short" : "Engagement pris par le signataire vis-à-vis de l'objet signé.",
      "definition" : "Engagement pris par le signataire vis-à-vis de l'objet signé.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.CommitmentTypeIndication.CommitmentTypeId",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.CommitmentTypeIndication.CommitmentTypeId",
      "short" : "Identifiant du type d'engagement.",
      "definition" : "Identifiant du type d'engagement.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.CommitmentTypeIndication.ObjectReference",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.CommitmentTypeIndication.ObjectReference",
      "short" : "Références des objets concernés.",
      "definition" : "Références des objets concernés.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.CommitmentTypeIndication.AllSignedDataObjects",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.CommitmentTypeIndication.AllSignedDataObjects",
      "short" : "Indique que l'engagement s'applique à tous les objets signés.",
      "definition" : "Indique que l'engagement s'applique à tous les objets signés.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.CommitmentTypeIndication.CommitmentTypeQualifiers",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.CommitmentTypeIndication.CommitmentTypeQualifiers",
      "short" : "Informations complémentaires relatives à l'engagement.",
      "definition" : "Informations complémentaires relatives à l'engagement.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.AllDataObjectsTimeStamp",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.AllDataObjectsTimeStamp",
      "short" : "Horodatage portant sur l'ensemble des objets signés.",
      "definition" : "Horodatage portant sur l'ensemble des objets signés.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.AllDataObjectsTimeStamp.CanonicalizationMethod",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.AllDataObjectsTimeStamp.CanonicalizationMethod",
      "short" : "Algorithme de canonicalisation.",
      "definition" : "Algorithme de canonicalisation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.AllDataObjectsTimeStamp.EncapsulatedTimeStamp",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.AllDataObjectsTimeStamp.EncapsulatedTimeStamp",
      "short" : "Jeton d'horodatage RFC 3161.",
      "definition" : "Jeton d'horodatage RFC 3161.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.IndividualDataObjectsTimeStamp",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.IndividualDataObjectsTimeStamp",
      "short" : "Horodatage portant sur un ou plusieurs objets signés.",
      "definition" : "Horodatage portant sur un ou plusieurs objets signés.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.IndividualDataObjectsTimeStamp.ObjectReference",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.IndividualDataObjectsTimeStamp.ObjectReference",
      "short" : "Références des objets concernés.",
      "definition" : "Références des objets concernés.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.IndividualDataObjectsTimeStamp.CanonicalizationMethod",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.IndividualDataObjectsTimeStamp.CanonicalizationMethod",
      "short" : "Algorithme de canonicalisation.",
      "definition" : "Algorithme de canonicalisation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.IndividualDataObjectsTimeStamp.EncapsulatedTimeStamp",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.SignedDataObjectProperties.IndividualDataObjectsTimeStamp.EncapsulatedTimeStamp",
      "short" : "Jeton d'horodatage RFC 3161.",
      "definition" : "Jeton d'horodatage RFC 3161.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties",
      "short" : "Propriétés non incluses dans la signature (XAdES-T et LT)",
      "definition" : "Propriétés non incluses dans la signature (XAdES-T et LT)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.Id",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.Id",
      "short" : "Valeur fixée à 'unsignedProperties'.",
      "definition" : "Valeur fixée à 'unsignedProperties'.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties",
      "short" : "Propriétés non incluses dans la signature",
      "definition" : "Propriétés non incluses dans la signature",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CounterSignature",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CounterSignature",
      "short" : "Contre-signatures appliquées à la signature.",
      "definition" : "Contre-signatures appliquées à la signature.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CounterSignature.Signature",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CounterSignature.Signature",
      "short" : "Signature de contre-signature.",
      "definition" : "Signature de contre-signature.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.SignatureTimeStamp",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.SignatureTimeStamp",
      "short" : "Jeton d'horodatage qualifié (XAdES-T minimum). Horodatage de la valeur de signature par une Autorité d'Horodatage\n              qualifiée eIDAS. Garantit la date de signature de manière opposable, indépendamment de la déclaration signingTime du signataire.",
      "definition" : "Jeton d'horodatage qualifié (XAdES-T minimum). Horodatage de la valeur de signature par une Autorité d'Horodatage\n              qualifiée eIDAS. Garantit la date de signature de manière opposable, indépendamment de la déclaration signingTime du signataire.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.SignatureTimeStamp.CanonicalizationMethod",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.SignatureTimeStamp.CanonicalizationMethod",
      "short" : "Algorithme de canonicalisation appliqué avant horodatage",
      "definition" : "Algorithme de canonicalisation appliqué avant horodatage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.SignatureTimeStamp.EncapsulatedTimeStamp",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.SignatureTimeStamp.EncapsulatedTimeStamp",
      "short" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "definition" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteCertificateRefs",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteCertificateRefs",
      "short" : "Références vers les certificats nécessaires à la validation.",
      "definition" : "Références vers les certificats nécessaires à la validation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteCertificateRefs.CertRefs",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteCertificateRefs.CertRefs",
      "short" : "Référence vers un certificat.",
      "definition" : "Référence vers un certificat.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteCertificateRefs.CertRefs.CertDigest",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteCertificateRefs.CertRefs.CertDigest",
      "short" : "Empreinte du certificat",
      "definition" : "Empreinte du certificat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteCertificateRefs.CertRefs.CertDigest.DigestMethod",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteCertificateRefs.CertRefs.CertDigest.DigestMethod",
      "short" : "Algorithme de hachage (SHA-256 recommandé)",
      "definition" : "Algorithme de hachage (SHA-256 recommandé)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteCertificateRefs.CertRefs.CertDigest.DigestValue",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteCertificateRefs.CertRefs.CertDigest.DigestValue",
      "short" : "Empreinte base64 du certificat X.509",
      "definition" : "Empreinte base64 du certificat X.509",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteRevocationRefs",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteRevocationRefs",
      "short" : "Références vers les informations de révocation.",
      "definition" : "Références vers les informations de révocation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteRevocationRefs.OCSPRefs",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteRevocationRefs.OCSPRefs",
      "short" : "Références vers des réponses OCSP.",
      "definition" : "Références vers des réponses OCSP.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteRevocationRefs.CRLRefs",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CompleteRevocationRefs.CRLRefs",
      "short" : "Références vers des listes de révocation.",
      "definition" : "Références vers des listes de révocation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.AttributeCertificateRefs",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.AttributeCertificateRefs",
      "short" : "Références vers des certificats d'attribut.",
      "definition" : "Références vers des certificats d'attribut.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.AttributeRevocationRefs",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.AttributeRevocationRefs",
      "short" : "Références vers les informations de révocation des certificats d'attribut.",
      "definition" : "Références vers les informations de révocation des certificats d'attribut.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.SigAndRefsTimeStamp",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.SigAndRefsTimeStamp",
      "short" : "Horodatage couvrant la signature et les références de validation.",
      "definition" : "Horodatage couvrant la signature et les références de validation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.SigAndRefsTimeStamp.EncapsulatedTimeStamp",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.SigAndRefsTimeStamp.EncapsulatedTimeStamp",
      "short" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "definition" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.RefsOnlyTimeStamp",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.RefsOnlyTimeStamp",
      "short" : "Horodatage couvrant uniquement les références de validation.",
      "definition" : "Horodatage couvrant uniquement les références de validation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.RefsOnlyTimeStamp.EncapsulatedTimeStamp",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.RefsOnlyTimeStamp.EncapsulatedTimeStamp",
      "short" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "definition" : "Jeton d'horodatage encodé en base64 (format RFC 3161)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CertificateValues",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CertificateValues",
      "short" : "Valeurs des certificats de la chaîne (XAdES-LT). Certificats de la chaîne de confiance embarqués dans la signature pour permettre la validation hors ligne après expiration.",
      "definition" : "Valeurs des certificats de la chaîne (XAdES-LT). Certificats de la chaîne de confiance embarqués dans la signature pour permettre la validation hors ligne après expiration.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CertificateValues.EncapsulatedX509Certificate",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.CertificateValues.EncapsulatedX509Certificate",
      "short" : "Certificat X.509 de la chaîne (base64 DER)",
      "definition" : "Certificat X.509 de la chaîne (base64 DER)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.RevocationValues",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.RevocationValues",
      "short" : "Données de révocation (XAdES-LT). Réponses OCSP ou listes CRL embarquées dans la signature.",
      "definition" : "Données de révocation (XAdES-LT). Réponses OCSP ou listes CRL embarquées dans la signature.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.RevocationValues.OcspValues",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.RevocationValues.OcspValues",
      "short" : "Réponses OCSP encodées en base64",
      "definition" : "Réponses OCSP encodées en base64",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.RevocationValues.CrlValues",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.RevocationValues.CrlValues",
      "short" : "Listes CRL encodées en base64",
      "definition" : "Listes CRL encodées en base64",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.ArchiveTimeStamp",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.ArchiveTimeStamp",
      "short" : "Horodatage garantissant la validité de la signature sur le long terme.",
      "definition" : "Horodatage garantissant la validité de la signature sur le long terme.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.ArchiveTimeStamp.EncapsulatedTimeStamp",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedSignatureProperties.ArchiveTimeStamp.EncapsulatedTimeStamp",
      "short" : "Jeton d'horodatage.",
      "definition" : "Jeton d'horodatage.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedDataObjectProperties",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedDataObjectProperties",
      "short" : "Propriétés non signées relatives aux objets couverts par la signature.",
      "definition" : "Propriétés non signées relatives aux objets couverts par la signature.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedDataObjectProperties.Extension",
      "path" : "pdlgc-signature.Object.QualifyingProperties.SignedProperties.UnsignedProperties.UnsignedDataObjectProperties.Extension",
      "short" : "Extension spécifique au profil d'implémentation.",
      "definition" : "Extension spécifique au profil d'implémentation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    }]
  }
}

```
