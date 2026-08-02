# AGIT Templateverse Toolkit

> [!NOTE]
> **KI-Zusammenarbeit**
>
> Dieses Repository wird in einer maintainergeführten Zusammenarbeit mit
> KI-Agenten gepflegt. Recipes und Skripte werden wie gewöhnlicher Quellcode
> geprüft; eine Agentenanweisung ersetzt niemals die Zustimmung zu einer
> Änderung am lokalen System.

**[Link to the English README](README.md)**

Wiederverwendbare, datenschutzbewusste Einrichtungs-Rezepte und lokale
Hilfswerkzeuge für Workflows des AGIT Templateverse.

## Inhalt des Repositorys

- kleine, versionierte Recipes für wiederkehrende Arbeitsplatzprobleme;
- rein lesende Diagnosen, die weder Zugangsdaten noch Konfigurationsinhalte
  ausgeben;
- klarer Umfang sowie Voraussetzungen, Prüfung und Entfernung; und
- zweisprachige Einrichtungshilfen für weniger technisch versierte Personen.

Dieses Toolkit ist kein Projekttemplate und enthält keine private
Templateverse-Governance. Es kann unabhängig verwendet werden.

## Templateverse-Mitgliedschaft

Dieses Repository ist ein offizielles öffentliches Utility-Mitglied des AGIT
Templateverse. Es wird in einem privaten Governance-Repository namens
`agit-templateverse` koordiniert; Nutzende benötigen darauf keinen Zugriff.

Die öffentlichen Projekttemplates sind:

- [AGIT Project Template](https://github.com/ctreffe/agit-project-template)
- [AGIT Dev Template](https://github.com/ctreffe/agit-dev-template)
- [AGIT Documentation Template](https://github.com/ctreffe/agit-docs-template)

Alle Templateverse-Mitglieder dürfen auf dieses Toolkit verweisen, wenn ein
konkretes öffentliches Recipe relevant ist; kein Mitglied muss es standardmäßig
bewerben.

## Sicherheitsmodell

Helper müssen transparent sein und von der nutzenden Person gestartet werden.
Sie beginnen mit Inspektion oder Dry Run, benennen jede dauerhafte Änderung,
vermeiden Administratorrechte und speichern niemals API-Keys, Zugriffstokens
oder persönliche Pfade im Repository. Dateisystemberechtigungen, ACLs,
Betriebssystemidentitäten und Synchronisationskonfigurationen liegen außerhalb
des anfänglichen Umfangs.

## Erstes Recipe: zuverlässige Git-Authentifizierung aus Codex

Das erste Recipe lässt von Codex gestartete Git-Befehle einen bereits
installierten Git Credential Manager auswählen. Dabei werden keine Zugangsdaten
in der Codex-Konfiguration gespeichert und die globale Git-Konfiguration bleibt
unverändert:

- [Deutsches Recipe](recipes/codex/git-credential-manager.de.md)
- [Englisches Recipe](recipes/codex/git-credential-manager.md)

Die rein lesende Diagnose wird in PowerShell gestartet:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\scripts\Test-CodexGitCredential.ps1
```

Die Diagnose führt weder eine Netzwerkanfrage noch einen Push aus.

## Repository-Status

Der erste Entwicklungsstand enthält Dokumentation und eine rein lesende
Diagnose. Automatische Config-Patches, Installer und Releases sind noch nicht
implementiert.

## Kontinuierliche Verbesserung

Wiederverwendbare Verbesserungen werden auf Sicherheit, Portabilität und
Wartungskosten geprüft, bevor sie zu einem Recipe werden. Toolkit-Releases
bleiben von Projekttemplates und privatem Governance-Repository unabhängig.

## Lizenz

Lizenziert unter der [MIT-Lizenz](LICENSE).
