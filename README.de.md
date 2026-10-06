# AGIT Templateverse Toolkit

> [!NOTE]
> **KI-Zusammenarbeit**
>
> Dieses Repository wird in einer maintainergeführten Zusammenarbeit mit
> KI-Agenten gepflegt. Recipes und Skripte werden wie gewöhnlicher Quellcode
> geprüft; eine Agentenanweisung ersetzt niemals die Zustimmung zu einer
> Änderung am lokalen System.
>
> Die providerneutrale Arbeitsvereinbarung wird in
> [COLLABORATION.md](COLLABORATION.md) gepflegt.

**[Link to the English README](README.md)**

Wiederverwendbare, datenschutzbewusste Einrichtungs-Rezepte und lokale
Hilfswerkzeuge für Workflows des AI Templateverse.

## Workflows und Skills

[Angepasste Template-Anleitung](TEMPLATE_README.de.md)


## Inhalt des Repositorys

- kleine, versionierte Recipes für wiederkehrende Arbeitsplatzprobleme;
- rein lesende Diagnosen, die weder Zugangsdaten noch Konfigurationsinhalte
  ausgeben;
- klarer Umfang sowie Voraussetzungen, Prüfung und Entfernung; und
- zweisprachige Einrichtungshilfen für weniger technisch versierte Personen.

Dieses Toolkit ist kein Projekttemplate und enthält keine private
Templateverse-Governance. Es kann unabhängig verwendet werden.

## Projektherkunft

Dieses Repository ist ein eigenständiges öffentliches Projekt, das vom
[AI Dev Template](https://github.com/ctreffe/ai-template-dev) abgeleitet
ist. Es wird als abgeleitetes Projekt dokumentiert und nicht als Mitglied des
Templateverse verwaltet. Template-Aktualisierungen werden nur durch bewusste,
geprüfte Harmonisierung übernommen; Nutzende benötigen keinen Zugriff auf das
private Governance-Repository `ai-templateverse`.

Die öffentlichen Projekttemplates sind:

- [AI Project Template](https://github.com/ctreffe/ai-template-project)
- [AI Dev Template](https://github.com/ctreffe/ai-template-dev)
- [AI Documentation Template](https://github.com/ctreffe/ai-template-docs)

Jedes Projekt darf auf ein konkretes öffentliches Toolkit-Recipe verweisen,
wenn es relevant ist. Ein solcher Link begründet weder Mitgliedschaft noch
Vererbung oder die Berechtigung zu Änderungen am lokalen System.

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
bleiben vom Dev Template und vom privaten Governance-Repository unabhängig.

## Aktuelles Quell-Template

Das aufgezeichnete Quell-Template ist [AI Dev Template](https://github.com/ctreffe/ai-template-dev).
[TEMPLATE_SOURCE.md](TEMPLATE_SOURCE.md) erklaert den frueheren Namen, die
unveraenderte Baseline und die lokale Quellklon-Zuordnung fuer eine ausgewaehlte
Synchronisation.

## Lizenz

Lizenziert unter der [MIT-Lizenz](LICENSE).
