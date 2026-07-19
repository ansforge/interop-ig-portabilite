// ===========================================================================
// Archive de Portabilité - METADATA.XML
// ===========================================================================


Logical: PDLGCMetadata
Id: pdlgc-metadata
Title: "PDLGC Metadata"
Description: "Modèle logique décrivant la structure d'un fichier METADATA associé à un SUBSET IHE XDM.
Regroupe un SubmissionSet, ses DocumentEntries et les Associations entre objets."

* submissionSet 1..1 XDMSubmissionSet "Lot de soumission du SUBSET"
* documentEntry 1..* XDMDocumentEntry "Fiches documentaires des documents inclus dans le SUBSET"
* association 1..* XDMAssociation "Associations entre objets du SUBSET (remplacement, transformation)"