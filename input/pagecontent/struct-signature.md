Le fichier `SIGN.XML`, positionné à la racine de l'archive de portabilité, contient la signature électronique de l'archive conformément au format XAdES. Il garantit l'intégrité de l'ensemble des fichiers de données LGC constituant l'archive et permet de vérifier l'identité du signataire ainsi que l'imputabilité de la production de l'archive. Les fichiers à vocation documentaire (README, documentation technique, schémas, exemples, etc.) ne sont pas couverts par la signature électronique.

Le fichier est destiné à être traité automatiquement par le système destinataire lors de l'import de l'archive.

Le `SIGN.XML` contient notamment :
- les références vers les fichiers signés ;
- les empreintes cryptographiques des fichiers référencés ;
- la valeur de la signature ;
- le certificat électronique utilisé pour la signature ;
- les propriétés XAdES nécessaires à la validation de la signature.

Toute modification du contenu de l'archive après sa signature conduit à l'échec de la vérification de la signature électronique.

**Modèle logique**

Le modèle logique associé au fichier `SIGN.XML` est consultable <a href="StructureDefinition-pdlgc-signature.html">ici</a>

**Exemple de SIGN.XML de l'archive de portabilité**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Signature Id="S0" xmlns="http://www.w3.org/2000/09/xmldsig#">
    <SignedInfo>
        <CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"/>
        <SignatureMethod Algorithm="http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"/>
        <!-- Signature du Manifest -->
        <Reference Type="http://www.w3.org/2000/09/xmldsig#Manifest" URI="#manifest">
            <DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
            <DigestValue>Wj93V8lSgF2Ygk4N4jA6...</DigestValue>
        </Reference>
        <!-- Signature obligatoire des propriétés XAdES -->
        <Reference Type="http://uri.etsi.org/01903#SignedProperties" URI="#signedProperties">
            <DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
            <DigestValue>u7+4mN6v8PkL...</DigestValue>
        </Reference>
    </SignedInfo>
    <SignatureValue>
        KJq9Y+gN5zD4...
    </SignatureValue>
    <KeyInfo>
        <X509Data>
            <X509Certificate>
                MIIGKDCCB...
            </X509Certificate>
        </X509Data>
    </KeyInfo>
    <!-- Périmètre de la signature -->
    <Object>
        <Manifest Id="manifest">
            <Reference URI="MANIFEST.XML">
                <DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
                <DigestValue>p5+P0Mk8MhLw...</DigestValue>
            </Reference>
            <Reference URI="PAT00001_XDM.zip">
                <DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
                <DigestValue>rF19q9AtJr...</DigestValue>
            </Reference>
            <Reference URI="PAT00002_XDM.zip">
                <DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
                <DigestValue>c1lTzM1QQ7...</DigestValue>
            </Reference>
            <Reference URI="TRANSVERSE.zip">
                <DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
                <DigestValue>F9acxHkL8r...</DigestValue>
            </Reference>
        </Manifest>
    </Object>
    <!-- Propriétés qualifiantes XAdES -->
    <Object>
        <QualifyingProperties Target="#S0">
            <SignedProperties Id="signedProperties">
                <SignedSignatureProperties>
                    <SigningTime>2026-07-16T14:32:18Z</xades:SigningTime>
                    <SigningCertificate>
                        <Cert>
                            <CertDigest>
                                <DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"/>
                                <DigestValue>n4Z7P2mH6Lx...</DigestValue>
                            </xades:CertDigest>
                        </Cert>
                    </SigningCertificate>
                </SignedSignatureProperties>
            </SignedProperties>
        </QualifyingProperties>
    </Object>
</Signature>
```