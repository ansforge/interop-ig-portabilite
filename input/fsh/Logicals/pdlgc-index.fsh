// ===========================================================================
// Archive de Portabilité - INDEX.HTM
// ===========================================================================


Logical: PDLGCIndex
Id: pdlgcIndex
Title: "PDLGC Index"
Description: "L'INDEX.HTM est renferme des informations éditoriales et est conforme aux spécifications XHTML et Echanges de Documents de santé."

* structIdNat 1..1 identifier "Identification nationale de l'Entité juridique initiée pour les besoins du SI-CPS. Cette identification est obtenue par la concaténation du type d'identifiant national de structure (provenant de la nomenclature CodeSystem-TRE-G07-TypeIdentifiantStructure) et de l'identifiant de la structure:** 1 + N° FINESS (entité juridique et entité géographique indéterminées);** 2 + N° Siren.Cas particulier:La notion d’identifiant d'entité juridique n'a pas de sens métier pour un cabinet individuel ou un cabinet de groupe identifié par un RPPS-Rang ou un ADELI-rang (cf. Attribut IdentifiantEG de la classe EntiteGeographique). Si un cas d'usage nécessite d'appliquer la notion générique d'entité juridique et d'entité géographique pour un cabinet individuel ou un cabinet de groupe, alors l'identifiant de l'entité juridique est constitué de la façon suivante: ** pour le cabinet d’un PS ADELI : 0 + IdentifiantEJ;** pour le cabinet d’un PS RPPS : 4 + IdentifiantEJ. Synonyme : Struct_IdNat (CI-SIS)."
* raisonSociale 1..1 string "La raison sociale est le nom de l'entité juridique.Elle figure obligatoirement dans les statuts de l'EJ.Synonyme: Dénomination."
* avertissement 0..1 string "avertissement optionnel de l'émetteur concernant la sécurité et la confidentialité."
* lienREADME 1..1 string "lien vers le fichier README.TXT de l'archive XDM Patient."