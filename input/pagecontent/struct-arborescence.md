L'archive de Portabilité est constituée de : 
- 2 fichiers (`README.TXT` et `MANIFEST.XML`) permettant de lire le contenu et présentant un rapport d'intégrité ;
- 1 fichier de signature (`SIGN.XML`) attestant de l'authenticité et de l'imputabilité des données ;
- 1 répertoire de documentation (`DOCUMENTATION/`) permettant d'interpréter le contenu de l'archive (dictionnaires de données, dictionnaires des terminologies, jeux d'échantillon, mapping,...)
- 1 archive de données transverses (`TRANSVERSE/`) associées au professionnel et/ou à la structure
- 1 ou plusieurs archive(s) de patient (`PATNNNNN`), conformes au profil IHE XDM

```
PAAAAAMMJJThhmmss.ZIP               (Archive ZIP chapeau de portabilité, hors profil XDM)
│
├── README.TXT                      (Informations éditoriales et instructions)
├── MANIFEST.XML                    (Vue synthétique du contenu de l'archive de Portabilité et rapport d'intégrité)
├── SIGN.XML                        (Signature attestant de l'authenticité et de l'imputabilité des données)
│
├── DOCUMENTATION/                  (Archive de documentation)
│   ├── DICO001.XML                 (Dictionnaire de données 1)
│   ├── DICO002.JSON                (Dictionnaire de données 2)
│   ├── VALUESET.JSON               (Dictionnaire des terminologies propriétaires)
│   ├── MAPPING.JSON                (Dictionnaire des terminologies propriétaires)
│   ├── ECH001.ZIP                  (jeu d'échantillons)
│   └── ...
│
├── TRANSVERSE.ZIP                  (Archive de données transverse liées au professionnel et/ou à la structure)
│   ├── README.TXT                  
│   └── TRANSVERSE/
│        ├── AGENDA.ICS
│        ├── COMPTA.txt
│        ├── LOGS.CSV
│        └── ...
│
├── PAT00001.ZIP                    (Archive XDM Patient INS_1, conforme IHE_XDM)
│   ├── INDEX.HTM
│   ├── README.TXT
│   └── IHE_XDM/
│       └── SUBSET01/
│           ├── METADATA.XML
│           ├── DOC10001.XML
│           ├── DOC10002.XML
│           └── ...
│
└── PAT00002.ZIP                    (Archive XDM Patient INS_2, conforme IHE_XDM)
    ├── INDEX.HTM
    ├── README.TXT
    └── IHE_XDM/
        └── SUBSET01/
            ├── METADATA.XML
            ├── DOC20001.XML
            └── ...
```