Logical: Association
Id: association-xdm
Title: "Association XDM (LM)"
Description: """
Modèle logique d'une association IHE XDS entre deux objets de l'archive de portabilité.
Permet de relier un SubmissionSet ou un DocumentEntry à un autre (remplacement ou transformation).
"""

* associationType 1..1 code "Type d'association"
* associationType from VS_AssociationType (required)
* sourceObject 1..1 uuid "Identifiant de l'objet source (SubmissionSet ou DocumentEntry)"
* targetObject 1..1 uuid "Identifiant de l'objet cible (SubmissionSet ou DocumentEntry)"

// ---------------------------------------------------------------------------

CodeSystem: CS_AssociationType
Id: cs-association-type
Title: "Type d'association XDS"
Description: "Types d'association entre objets XDS dans le contexte portabilité."

* #RPLC "Remplacement" "Le document source remplace le document cible."
* #XFRM "Transformation" "Le document source est une transformation du document cible (ex : CDA généré depuis des données propriétaires)."

// ---------------------------------------------------------------------------

ValueSet: VS_AssociationType
Id: vs-association-type
Title: "Type d'association XDS (VS)"
Description: "Valeurs autorisées pour le type d'association entre objets XDS."

* include codes from system CS_AssociationType
