// ===========================================================================
// Archive de Portabilité - Signature XAdES (SIGN.XML)
// ===========================================================================


Logical: PDLGCSignature
Id: pdlgc-signature
Title: "PDLGC Signature"
Description: "signature XAdES de l'archive attestant de l'imputabilité et l'intégrité des données"

// ── Structure générale ──────────────────────────────────────────────────────

* SignedInfo 1..1 BackboneElement "Informations signées"
  * CanonicalizationMethod 1..1 string "Algorithme de canonicalisation XML. Valeur recommandée : http://www.w3.org/2001/10/xml-exc-c14n#."
  * SignatureMethod 1..1 string "Algorithme de signature. Valeur recommandée : http://www.w3.org/2001/04/xmldsig-more#rsa-sha256."
  * References 1..1 BackboneElement "Références aux objets signés. Chaque référence pointe vers un fichier de l'archive chapeau ou vers un objet XAdES interne (SignedProperties)."
    * URI 1..1 string "URI de la référence. Valeur fixée à #manifest"
    * DigestMethod 1..1 string "Algorithme de hachage de la référence. Valeur recommandée : http://www.w3.org/2001/04/xmlenc#sha256"
    * DigestValue 1..1 string "Empreinte base64 de l'objet référencé"

* signatureValue 1..1 string "Valeur de la signature cryptographique. Base64 de la signature calculée sur les références déclarées dans SignedInfo."


// ── Informations sur le signataire ─────────────────────────────────────────

* keyInfo 1..1 BackboneElement "Informations sur la clé de signature"
  * x509Data 1..1 BackboneElement "Données du certificat X.509 du signataire"
    * x509Certificate 1..1 string "Certificat X.509 du signataire (base64 DER). Certificat délivré par une autorité de certification reconnue par le référentiel RGS."
    * x509IssuerSerial 0..1 BackboneElement "Émetteur et numéro de série du certificat"
      * x509IssuerName 1..1 string "Nom distinctif de l'autorité de certification"
      * x509SerialNumber 1..1 string "Numéro de série du certificat"

// ── Propriétés signées (XAdES SignedProperties) ─────────────────────────────

* qualifyingProperties 1..1 BackboneElement "Propriétés qualifiantes XAdES"
  * signedProperties 1..1 BackboneElement "Propriétés incluses dans la signature"
    * signingTime 1..1 dateTime "Date et heure de signature déclarée par le signataire (ISO 8601)"
        """Distincte de l'horodatage qualifié porté par les UnsignedProperties
        (XAdES-T et supérieur). Pour XAdES-B, seul signingTime est présent."""
    * signingCertificateV2 1..1 BackboneElement "Référence au certificat de signature"
        """Lie cryptographiquement la signature au certificat du signataire."""
      * certDigest 1..1 BackboneElement "Empreinte du certificat"
        * digestMethod 1..1 string "Algorithme de hachage (SHA-256 recommandé)"
        * digestValue 1..1 string "Empreinte base64 du certificat X.509"
    * signedDataObjectProperties 0..1 BackboneElement "Propriétés des objets signés"
      * dataObjectFormat 0..* BackboneElement "Format des objets signés référencés"
        * objectReference 1..1 string "Référence à l'élément Reference concerné"
        * mimeType 0..1 string "Type MIME de l'objet signé"
        * description 0..1 string "Description de l'objet signé"

// ── Propriétés non signées (XAdES-T et supérieur uniquement) ────────────────

  * unsignedProperties 0..1 BackboneElement "Propriétés non incluses dans la signature (XAdES-T et LT)"
    * signatureTimeStamp 0..1 BackboneElement "Jeton d'horodatage qualifié (XAdES-T minimum). Horodatage de la valeur de signature par une Autorité d'Horodatage
        qualifiée eIDAS. Garantit la date de signature de manière opposable, indépendamment de la déclaration signingTime du signataire."
      * canonicalizationMethod 1..1 string "Algorithme de canonicalisation appliqué avant horodatage"
      * encapsulatedTimeStamp 1..1 string "Jeton d'horodatage encodé en base64 (format RFC 3161)"
    * certificateValues 0..1 BackboneElement "Valeurs des certificats de la chaîne (XAdES-LT). Certificats de la chaîne de confiance embarqués dans la signature pour permettre la validation hors ligne après expiration."
      * encapsulatedX509Certificate 1..* string "Certificat X.509 de la chaîne (base64 DER)"
    * revocationValues 0..1 BackboneElement "Données de révocation (XAdES-LT). Réponses OCSP ou listes CRL embarquées dans la signature."
      * ocspValues 0..* string "Réponses OCSP encodées en base64"
      * crlValues 0..* string "Listes CRL encodées en base64"

// ── Périmètre de la signature ───────────────────────────────────────────────

* Object 1..1 BackboneElement "Périmètre des objets couverts par la signature"
  * Manifest 1..1 string "Périmètre des objets couverts par la signature. Id fixé à manifest"
    * Reference 1..* BackboneElement "Références aux objets signés. Chaque référence pointe vers une archive zip Patient ou transverse incluse dans l'archive de Portabilité."
      * Uri 1..1 string "URI de la référence"
      * DigestMethod 1..1 string "Algorithme de hachage de la référence. Valeur recommandée : http://www.w3.org/2001/04/xmlenc#sha256"
      * DigestValue 1..1 string "Empreinte base64 de l'objet référencé"
