<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>PDLGC Implementation Guide - Data portability for Practice Management Software</b><br>
This guide defines the functional and technical specifications for the portability of health data between practice management software vendors, in accordance with Article L.1470-5-1 of the French Public Health Code.
</p>

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>Cet Implementation Guide n'est pas la version courante. Il s'agit de la version en intégration continue, soumise à de fréquents changements, uniquement destinée à suivre les travaux en cours. La version courante est accessible via l'URL canonique : http://interop.esante.gouv.fr/ig/fhir/pdlgc</p>
    </blockquote>
</div>
{% endif %}


{% if site.data.info.releaselabel == 'public-comment' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Cet Implementation Guide est actuellement en concertation. La version courante est accessible à l'adresse : http://interop.esante.gouv.fr/ig/fhir/pdlgc
</p>
</blockquote>
</div>
{% endif %}

<div class="figure">
    <img src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS" style="width:100%;">
</div>


### Introduction

La portabilité des données des logiciels de gestion de cabinet (LGC) permet de garantir qu'un changement d'éditeur de logiciel ne constitue plus un obstacle à l'exercice professionnel ni à la continuité des soins. Elle repose sur l'obligation de transfert des données de santé entre éditeurs de services numériques, telle qu'introduite par l'article L.1470-5-1 du Code de la Santé Publique (<a href="https://www.legifrance.gouv.fr/jorf/article_jo/JORFARTI000054131648">article 55 de la loi n° 2026-403 du 26 mai 2026 de simplification de la vie économique</a>).

Le présent guide d'implémentation traduit en spécifications fonctionnelles et techniques les exigences du **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC** élaboré par l'ANS et approuvé par arrêté du ministre chargé de la santé. 

### Structure du guide d'implémentation

<div style="background-color: #edf5ec ; border-left: 4px solid #4a9e5c; padding: 15px; margin: 20px 0;">
    <strong>Contexte métier</strong>
    <p style="margin: 10px 0 0 0;padding-left: 30px;">
    Le contexte métier, défini sur la présente page, présente les <a href="#contexte-metier-cas-usage">cas d'usage</a>, les <a href="#contexte-metier-definitions">définitions</a>, le <a href="#contexte-metier-cadre-juridique">cadre juridique</a> ainsi que l'<a href="#contexte-metier-orga-processus">organisation des processus collaboratifs</a>.
    </p>
</div>

<div style="background-color: #e8f4f8; border-left: 4px solid #0077be; padding: 15px; margin: 20px 0;">
    <strong>Spécifications</strong>
    <p style="margin: 10px 0 0 0;padding-left: 30px;">
    Cette section présente les spécifications fonctionnelles et techniques associcées à chaque processus collaboratif.<br>
    L'<a href="specs-main-flux-export-archive-portabilite.html#etude-fonctionnelle">étude fonctionnelle</a> présente notamment les acteurs, une définition du processus collaboratif et une modélisation de l'archive de Portabilité.<br>
    Les <a href="specs-main-flux-export-archive-portabilite.html#specs-techniques">spécifications techniques</a> décrivent le flux d'export d'archive de Portabilité et son positionnement par rapport à d'autres profils, ainsi que les formats des documents échangés.<br>
    La <a href="specs-main-structure-archive.html">structure de l'archive de Portabilité</a> décrit quant à elle l'arborescence, les conventions d'écriture, et le contenu des différents fichiers de gestion de l'archive
    </p>
</div>

<div style="background-color: #fdf0e6; border-left: 4px solid #e07b39; padding: 15px; margin: 20px 0;">
    <strong>Ressources de conformité</strong>
    <p style="margin: 10px 0 0 0;padding-left: 30px;">
    La section <a href="artifacts.html">Ressources de conformité</a> liste les différents artefacts supportant les spécifications fonctionnelles et techniques
    </p>
</div>

<div style="background-color: #f0edf5 ; border-left: 4px solid #7b52a8; padding: 15px; margin: 20px 0;">
    <strong>Annexes</strong>
    <p style="margin: 10px 0 0 0;padding-left: 30px;">
    Cette section renvoie aux annexes relatives à la sécurité, aux téléchargements, et à toute autre documentation utile au présent volet
    </p>
</div>

<br>

### Scénarios et cas d'usage {#contexte-metier-cas-usage}

{% include contexte-metier-cas-usage.md %}

<br>

### Cadre juridique {#contexte-metier-cadre-juridique}

Le cadre réglementaire applicable à la portabilité des données LGC est détaillé dans le **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC**. Le présent guide d'implémentation ne reprend pas ces éléments et renvoie au référentiel pour toute question relative aux obligations légales et aux responsabilités des acteurs.

<br>

### Définitions {#contexte-metier-definitions}

{% include contexte-metier-definitions.md %}

<br>

### Organisation des processus collaboratifs {#contexte-metier-orga-processus}

{% include contexte-metier-orga-processus.md %}

<br>

### Dépendances

{% lang-fragment dependency-table.xhtml %}

### Propriété intellectuelle

{% lang-fragment ip-statements.xhtml %}
