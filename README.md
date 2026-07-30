![Logo_LEF_CI-SIS](https://user-images.githubusercontent.com/48218773/227532484-eff82649-4e42-49c6-966a-dc3ea78cf59c.png)


[![Workflow Init](https://github.com/ansforge/interop-ig-portabilite/actions/workflows/fhir-workflows.yml/badge.svg)](https://github.com/ansforge/interop-ig-portabilite/actions/workflows/fhir-workflows.yml)

Cet exemple d'Implementation Guide (IG) très simplifié sert de base pour le développement de nouveaux guides d'implémentation. La démarche d'élaboration d'un nouvel IG est expliquée dans le [wiki de ce repo](https://github.com/ansforge/IG-modele/wiki).
Le README ci-dessous constitue un template à adapter et compléter pour chaque projet.

# Contexte

## Contexte métier du projet

La portabilité des données des logiciels de gestion de cabinet (LGC) permet de garantir qu'un changement d'éditeur de logiciel ne constitue plus un obstacle à l'exercice professionnel ni à la continuité des soins. Elle repose sur l'obligation de transfert des données de santé entre éditeurs de services numériques, telle qu'introduite par l'article L.1470-5-1 du Code de la Santé Publique (<a href="https://www.legifrance.gouv.fr/jorf/article_jo/JORFARTI000054131648">article 55 de la loi n° 2026-403 du 26 mai 2026 de simplification de la vie économique</a>).

Le présent guide d'implémentation traduit en spécifications fonctionnelles et techniques les exigences du **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC** élaboré par l'ANS et approuvé par arrêté du ministre chargé de la santé.

## Contexte technique du projet

La transaction Export d'Archive de Portabilité décrite dans ce guide d'implémentation définit les exigences relatives à la structure d'une archive Zip de Portabilité.
Elle est déclenchée par le demandeur (Patient ou Professionnel de Santé) qui souhaite la portabilité de données d'un LGC. L'éditeur émetteur assemble alors le contenu de l'archive ZIP pour la transmettre au destinataire (éditeur destinataire ou personne physique) qui intègrera / lira les données.

# CI/CD

Les workflows associés à ce repository (.github/workflows) permettent :

* D'executer Sushi pour vérifier la grammaire
* De faire les tests avec le validator_cli
* De publier les pages : https://ansforge.github.io/interop-ig-portabilite/{nom de la branche}/ig

# Notes

Ce repo "interop-ig-portabilite" a été créé à partir du repo [sample-ig](https://github.com/FHIR/sample-ig) de l'organisation GitHub FHIR.

Un commentaire ? Une remarque ? Utilisez les GitHub [issues](https://docs.github.com/fr/issues) pour indiquer vos propositions d'amélioration et de correction.

## Acronymes

* IG : Implementation Guide
* IHE : Integrating the Healthcare Entreprise
* FHIR : Fast Healthcare Interoperability Resources
* HDS : Hébergeur de Données de Santé
* HL7 : Health Level Seven
* LGC : Logiciel de Gestion de Cabinet
* MSS : Messagerie Sécurité de Santé
* PDLGC : Portabilité de Données de Logiciel de Gestion de Cabinet
* XDM : Cross-Enterprise Document Media Interchange