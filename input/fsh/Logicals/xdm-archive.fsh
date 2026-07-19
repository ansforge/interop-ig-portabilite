Logical:  XDMArchive
Id: xdm-archive
Title: "XDM Archive XDM"
Description: """
Modèle logique décrivant la structure d'un SUBSET IHE XDM.
Regroupe un SubmissionSet, ses DocumentEntries et les Associations entre objets.
"""

* submissionSet 1..1 XDMSubmissionSet "Lot de soumission du SUBSET"
* documentEntry 1..* XDMDocumentEntry "Fiches documentaires des documents inclus dans le SUBSET"
* association 1..* XDMAssociation "Associations entre objets du SUBSET (remplacement, transformation)"
