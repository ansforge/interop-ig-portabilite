Logical: Archive
Id: archive-xdm
Title: "Archive XDM (LM)"
Description: """
Modèle logique décrivant la structure d'un SUBSET IHE XDM.
Regroupe un SubmissionSet, ses DocumentEntries et les Associations entre objets.
"""

* submissionSet 1..1 SubmissionSet "Lot de soumission du SUBSET"
* documentEntry 1..* DocumentEntry "Fiches documentaires des documents inclus dans le SUBSET"
* association 1..* Association "Associations entre objets du SUBSET (remplacement, transformation)"
