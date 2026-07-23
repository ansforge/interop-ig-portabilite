Logical: XDMAssociation
Id: xdmAssociation
Title: "XDM Association"
Description: """
Modèle logique d'une association IHE XDS entre deux objets de l'archive de portabilité.
Permet de relier un SubmissionSet ou un DocumentEntry à un autre (remplacement ou transformation).
"""

* associationType 1..1 code "Type d'association"
* associationType from VS_XDM_AssociationType (required)
* sourceObject 1..1 uuid "Identifiant de l'objet source (SubmissionSet ou DocumentEntry)"
* targetObject 1..1 uuid "Identifiant de l'objet cible (SubmissionSet ou DocumentEntry)"