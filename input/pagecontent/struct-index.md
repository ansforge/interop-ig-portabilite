Le fichier INDEX.HTM est imposé par le profil IHE_XDM à la racine d'une archive XDM. Il renferme des informations éditoriales et est conforme aux spécifications XHTML et [Echanges de Documents de santé](https://esante.gouv.fr/annexe-sources-des-donnees-personnes-et-structures). Il contient : 
- l'identification obligatoire du fournisseur sortant ayant créé le media : StructIdNat (identifiant de stucture de santé) et StructNom (nom de la structure) ; 
- l'avertissement optionnel de cette institution concernant la sécurité et la confidentialité; 
- un lien vers le fichier README.TXT.

**Exemple de fichier INDEX.HTM** : 

```html
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    Emetteur : LGC Exemple (3859645252)
    Voir le fichier <a href="README.TXT">ReadMe</a>
</html>
```

