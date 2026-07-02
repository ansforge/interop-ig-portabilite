Le fichier `MANIFEST.XML`, positionné à la racine de l'archive de portabilité, fournit une vue d'ensemble synthétique et exploitable par traitement automatisé du contenu global de l'export. Il complète l'`INDEX.HTM` de niveau chapeau, destiné à la lecture humaine. Il porte exclusivement sur le pilotage de la collection d'archives. Le détail des fichiers transportés est quant à lui décrit dans le fichier METADATA.XML de chaque lot de soumission.

Le `MANIFEST.XML` recense notamment :
- les informations générales de l'export ;
- les statistiques générales ;
- la liste des archives patients et transverses incluses avec leurs caractéristiques essentielles ;


```xml
<?xml version="1.0" encoding="UTF-8"?>
<Manifest>
    <exportId>75249e6c-9779-4e57-bade-9978c2313ce9</exportId>
    <extractTime>2026-06-15T14:30:00+02:00</extractTime>
    <exportType>MASSIF</exportType>
    <exportStatus>COMPLETE</exportStatus>
    <comments>Export de données LGC répondant à la demande du Dr Dupond le 13 juin 2026</comments>
    <editeurSortant>
      <denominationEG>Editeur de LGC</denominationEG>
      <numSiret>785 654 6985 0005</numSiret>
      <contact>
        <nom>Service Portabilité</nom>
        <email>portabilite@editeur.fr</email>
        <telephone>+33100000000</telephone>
      </contact>
    </editeurSortant>
    <PatientArchiveCount>2</PatientArchiveCount>
    <TransverseArchiveCount>1</TransverseArchiveCount>
    <Archives>
      <Archive>
        <type>Transverse</type>
        <archiveid>TRANSV</archiveid>
        <size>503</size>
        <hash>127e6fbfe24a750e72930c220a8e138275656b8e5d8f48a98c3c92df2caba935</hash>
      </Archive>
      <Archive>
        <type>Patient</type>
        <archiveid>PAT00001</archiveid>
        <patientId>1850615458136</patientId>
        <size>10652</size>
        <hash>152e6fbfc23a758e75930a220a7e138275256b8e5c8f48a97c3c92df2ccba945</hash>
      </Archive>
         <Archive>
          <type>Patient</type>
          <archiveid>PAT00002<archiveid>
          <patientId>1930707245385</patientId>
          <size>856</size>
          <hash>956e6fbfc56d758e75930a225d7e138275256c9e4c8f48a97c3c92ec2ccba945</hash>
        </Archive>
    </Archives>
</Manifest>
```
