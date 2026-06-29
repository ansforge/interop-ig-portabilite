// ===========================================================================
// Acteur Destinataire
// ===========================================================================

Instance: PDLGC-Destinataire
InstanceOf: ActorDefinition
Title: "PDLGC Destinataire"
Usage: #definition
Description: "Destinataire de l'export de données de LGC.
Il peut s'agir d'un médecin ou professionnel de santé libéral recevant l'export via son LGC.
Il peut également s'agir patient lui-même, bénéficiaire de ses droits de portabilité individuelle (RGPD Art. 20, Art. L.1111-7 CSP).
Dans le cas d'un export sur réquisition judiciaire, c'est le juge qui sera le destinataire."
* purpose = "Person"
* name = "PDLGC_PS_Destinataire"
* title = "PDLGC Professionnel de Santé Destinataire"
* status = #active
* experimental = false
* type = #person
* documentation = ""