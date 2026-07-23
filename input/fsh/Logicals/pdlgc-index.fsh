// ===========================================================================
// Archive de Portabilité - INDEX.HTM
// ===========================================================================


Logical: PDLGCIndex
Id: pdlgcIndex
Title: "PDLGC Index"
Description: "L'INDEX.HTM est renferme des informations éditoriales et est conforme aux spécifications XHTML et Echanges de Documents de santé."

* structIdNat 1..1 StructIdNat "Identification nationale de l'Entité juridique initiée pour les besoins du SI-CPS."
* raisonSociale 1..1 string "La raison sociale est le nom de l'entité juridique.Elle figure obligatoirement dans les statuts de l'EJ.Synonyme: Dénomination."
* avertissement 0..1 string "avertissement optionnel de l'émetteur concernant la sécurité et la confidentialité."
* lienREADME 1..1 string "lien vers le fichier README.TXT de l'archive XDM Patient."