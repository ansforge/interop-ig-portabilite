Le fichier `MANIFEST.XML`, positionné à la racine de l'archive de portabilité, fournit une vue d'ensemble synthétique et exploitable par traitement automatisé du contenu global de l'export. Il complète le `README.TXT` de niveau chapeau, destiné à la lecture humaine. Il porte exclusivement sur le pilotage de la collection d'archives. Le détail des fichiers transportés est quant à lui décrit dans le fichier `METADATA.XML` de chaque lot de soumission.

Le `MANIFEST.XML` recense notamment :
- les informations générales de l'export ;
- les statistiques générales ;
- la liste des archives patients et transverses incluses avec leurs caractéristiques essentielles ;

**Modèle logique**

Le modèle logique associé au fichier `MANIFEST.XML` est consultable <a href="StructureDefinition-pdlgc-manifest.html">ici</a>

**Exemple de `MANIFEST.XML` de l'archive de portabilité**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Manifest>
    <exportId>75249e6c-9779-4e57-bade-9978c2313ce9</exportId>
    <exportType>MASSIF</exportType>
    <exportStatus>COMPLETE</exportStatus>
    <comments>Export de données LGC répondant à la demande du Dr Dupond le 13 juin 2026</comments>
    <sourceSystem>
      <lgcSoftwareVendor>
        <name>Editeur Exemple de LGC</raisonSociale>
        <idNatStruct>175259803546</idNatStruct>
        <institution>Editeur Exemple de LGC^^^^^&amp;1.2.250.1.71.4.2.2&amp;ISO^IDNST^^^175259803546"</institution>
        <contact>
          <name>Service Portabilité</name>
          <telecom>
            <type>EMAIL</system>
            <value>portabilite@editeur.fr</value>
          </telecom>
          <telecom>
            <system>phone</system>
            <value>02 98 54 26 45</value>
          </telecom>
          <telephone>+33100000000</telephone>
        </contact>
      </lgcSoftwareVendor>
      <lgcSystem>175259803546/2789345815^Système exemple LGC V1.0^Modèle Exemple^^^^^&amp;1.2.250.1.71.4.2.1&amp;ISO^U^^^RI<lgcSystem>
    </sourceSystem>
    <statistics>
      <patientArchiveCount>2</PatientArchiveCount>
      <transverseArchiveCount>1</TransverseArchiveCount>
    </statistics>
    <Archives>
      <Archive>
        <archiveid>TRANSV</archiveid>
        <type>Transverse</type>
        <size>503</size>
        <hash>127e6fbfe24a750e72930c220a8e138275656b8e5d8f48a98c3c92df2caba935</hash>
      </Archive>
      <Archive>
        <type>Patient</type>
        <archiveid>PAT00001</archiveid>
        <patientId>1850615458136^^^&amp;1.2.250.1.213.1.4.10&amp;ISO^NH"</patientId>
        <size>10652</size>
        <hash>152e6fbfc23a758e75930a220a7e138275256b8e5c8f48a97c3c92df2ccba945</hash>
      </Archive>
      <Archive>
        <type>Patient</type>
        <archiveid>PAT00002<archiveid>
        <patientId>279035121518989^^^&amp;1.2.250.1.213.1.4.10&amp;ISO^NH"</patientId>
        <size>856</size>
        <hash>956e6fbfc56d758e75930a225d7e138275256c9e4c8f48a97c3c92ec2ccba945</hash>
      </Archive>
    </Archives>
</Manifest>
```
