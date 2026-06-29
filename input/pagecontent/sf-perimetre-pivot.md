Les données du périmètre pivot, telles que définies en annexe 1 du **Référentiel de sécurité, d'interopérabilité et d'éthique relatif à la portabilité des données des LGC**, doivent être exportées conformément aux formats indiqués dans le tableau ci-après. 

Les formats standardisés sont à privilégier lorsqu'ils sont nativement utilisés ou disponibles au sein du logiciel. Cette exigence n'implique pas la conversion ou la restructuration de données vers un format standardisé aux seules fins de l'export. **Lorsqu'aucune donnée standardisée correspondante n'est disponible, les données doivent être exportées dans leur format d'origine.**

Les documents du dossier patient doivent être exportés dans un format de consultation de type PDF, en complément des formats structurés prévus par la présente annexe. Cette représentation vise à garantir l’accès et la consultation des informations exportées, y compris en l’absence d’un logiciel capable d’exploiter les formats structurés associés.
<br>

<style>
 /* Format table */
  .lgc-table {
    border-collapse: collapse;
    width: 100%;
    font-size: 0.9em;
    font-family: sans-serif;
  }
  .lgc-table th {
    background-color: #2c5f7a;
    color: white;
    padding: 8px 10px;
    text-align: left;
    border: 1px solid #ccc;
  }
  .lgc-table td {
    padding: 7px 10px;
    border: 1px solid #ddd;
    vertical-align: top;
  }
  .lgc-table tr:nth-child(even) td {
    background-color: #f9f9f9;
  }

  /* Format flag */
  .flag {
    display: inline-block;
    padding: 2px 8px;
    border-radius: 4px;
    font-size: 0.82em;
    font-weight: 600;
    margin: 2px 0;
    line-height: 1.5;
  }
  .flag-prioritaire {
    background-color: #edf5ec;
    border: 1.5px solid #4a9e5c;
    color: #2e6b3e;
  }
  .flag-alternatif {
    background-color: #fdf0e6;
    border: 1.5px solid #e07b39;
    color: #a04e1a;
  }
  .flag-opposable {
    background-color: #e8f4f8;
    border: 1.5px solid #0077be;
    color: #005a8e;
  }

  /* Légende */
  .lgc-legend {
    display: flex;
    gap: 16px;
    flex-wrap: wrap;
    margin-bottom: 12px;
    font-size: 0.85em;
    font-family: sans-serif;
  }
  .lgc-legend-item {
    display: flex;
    align-items: center;
    gap: 6px;
  }

  /* Listes dans les cellules */
  .lgc-table ul {
    margin: 4px 0;
    padding-left: 16px;
  }
  .lgc-table li {
    margin: 2px 0;
  }
</style>

<div class="lgc-legend">
  <div class="lgc-legend-item"><span class="flag flag-opposable">Opposable</span> Format imposé s'appuyant sur des spécifications CI-SIS quand elle existe</div>
  <div class="lgc-legend-item"><span class="flag flag-prioritaire">Prioritaire</span> Format recommandé, à utiliser en priorité</div>
  <div class="lgc-legend-item"><span class="flag flag-alternatif">Alternatif</span> Format accepté à défaut</div>
</div>

<table class="lgc-table">
  <thead>
    <tr>
      <th>Données</th>
      <th>Type de données</th>
      <th>Format</th>
      <th>Référence / Standard</th>
      <th>Contenu</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Identification et données administratives patient</td>
      <td>Patient</td>
      <td>
       <ul>
          <li> Format opposable : <span class="flag flag-opposable"> CDA R2 Niveau 3</span><br>
        <span class="flag flag-opposable">PDF A-1</span></li>
          <li><i>Format cible européen (non requis à date) : FHIR</i></li>
        </ul>
      </td>
      <td>Spécifications opposables :<span class="flag flag-opposable"><a href="https://esante.gouv.fr/volet-synthese-medicale">Volet de Synthèse Médicale</a> (CI-SIS)</span></td>
      <td>Identité, INS qualifiée, coordonnées, professionnels de santé associés</td>
    </tr>
    <tr>
      <td>Données médicales</td>
      <td>Patient</td>
      <td>
        <ul>
          <li> Format opposable : <span class="flag flag-opposable">CDA R2 Niveau 3</span>
        <span class="flag flag-opposable">PDF A-1</span></li>
          <li><i>Format cible européen (non requis à date) : FHIR</i></li>
        </ul>
      </td>
      <td>Spécifications opposables : <span class="flag flag-opposable"><a href="https://esante.gouv.fr/volet-synthese-medicale">Volet de Synthèse Médicale</a> (CI-SIS)</span></td>
      <td>Antécédents, allergies, pathologies, traitements, facteurs de risque</td>
    </tr>
    <tr>
      <td>Documents médicaux et données de biologie (produits dans le logiciel ou importés)</td>
      <td>Patient</td>
      <td>
        <ul>
          <li> Format prioritaire : <span class="flag flag-prioritaire">CDA R2</span>
            <span class="flag flag-prioritaire">PDF A-1</span></li>
          <li>Alternative : <span class="flag flag-alternatif">PDF A-1 seul</li>
        </ul>
        </span>
      </td>
      <td>
        <ul>
            <li>Spécifications prioritaires : <span class="flag flag-prioritaire"><a href="https://esante.gouv.fr/offres-services/ci-sis/espace-publication">Volets du CI-SIS</a></span></li>
            <li>Terminologie prioritaire (obligatoire pour les données de biologie) :  <span class="flag flag-prioritaire">LOINC</span> </li>
      </td>
      <td></td>
    </tr>
    <tr>
      <td>Clinique – Notes de consultation</td>
      <td>Patient</td>
      <td>
        Format opposable : <span class="flag flag-opposable">Tout format structuré (JSON, XML…) documenté</span>
          <span class="flag flag-opposable">PDF A-1</span>   
      </td>
      <td></td>
      <td>
        Structuration minimale obligatoire :
        <ul>
          <li>Horodatage</li>
          <li>Identification du professionnel</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>Clinique – Paramètres vitaux</td>
      <td>Patient</td>
      <td>
         <ul>
          <li>  Format opposable : <span class="flag flag-opposable">Tout format structuré (JSON, XML…) documenté</span>
            <span class="flag flag-opposable">PDF A-1</span></li>
          <li> <i>Format cible CI-SIS (non requis à date) : FHIR</i></li>
        </ul>      
      </td>
      <td><i>Volet cible :  <a href="https://interop.esante.gouv.fr/ig/fhir/mesures/">Mesures de santé</a></i></td>
      <td></td>
    </tr>
    <tr>
      <td>Clinique – Notes personnelles</td>
      <td>Patient</td>
      <td>
        Format opposable : <span class="flag flag-opposable">Tout format structuré (JSON, XML…) documenté</span>
        <span class="flag flag-opposable">PDF A-1</span>
      </td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Prescriptions</td>
      <td>Patient</td>
      <td>
        <ul>
            <li>Format opposable : <span class="flag flag-opposable">Tout format structuré (JSON, XML…) documenté</span>
            <span class="flag flag-opposable">PDF A-1</span></li>
            <li><i>Format cible européen (non requis à date) : FHIR</i></li>
        </ul>
      </td>
      <td></td>
      <td>Historique des ordonnances et dispensations</td>
    </tr>
    <tr>
      <td>Agenda</td>
      <td>Transverse</td>
      <td>
        <ul>
            <li>Format prioritaire : <span class="flag flag-prioritaire">iCalendar</span></li>
            <li>Alternative : <span class="flag flag-alternatif">Tout format structuré (JSON, XML…) documenté</span></li>
        </ul>
      </td>
      <td>Spécifications prioritaires :  <span class="flag flag-prioritaire"> RFC 5545</span></td>
      <td>Rendez-vous passés, rendez-vous à venir</td>
    </tr>
    <tr>
      <td>Traces</td>
      <td>Transverse</td>
      <td>
        <ul>
            <li>Format prioritaire : <span class="flag flag-prioritaire">Syslog</span></li>
            <li>Alternative : <span class="flag flag-alternatif">Tout format structuré (JSON, XML…) documenté</span></li>
        </ul>
      </td>
      <td><a href = "https://esante.gouv.fr/sites/default/files/media_entity/documents/pgssi_referentiel_imputabilite_v1.0_0.pdf">Référentiel d'imputabilité</a> </td>
      <td>
        Structuration minimale obligatoire :
        <ul>
          <li>Accès</li>
          <li>Modifications</li>
          <li>Horodatage</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>
