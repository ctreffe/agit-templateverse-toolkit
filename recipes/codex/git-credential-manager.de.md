# Git Credential Manager für von Codex gestartete Git-Befehle

## Zweck

HTTPS-Pushes sollen nicht mehr daran scheitern, dass die nicht interaktive
Codex-Shell keine Git-Abfrage für den Benutzernamen anzeigen kann. Dieses Recipe
wählt einen bereits installierten Git Credential Manager (GCM) ausschließlich
für von Codex gestartete Prozesse aus.

## Voraussetzungen

- Windows mit Git for Windows und installiertem `git-credential-manager.exe`;
- ein HTTPS-Git-Remote;
- eine bereits in GCM verfügbare GitHub-Anmeldung oder die Erlaubnis, dessen
  gewöhnliche interaktive Anmeldung abzuschließen; und
- eine aktuelle Codex-Version mit `shell_environment_policy.set`.

## Dauerhafte Auswirkung

Die folgenden Einträge werden in der bestehenden Tabelle
`[shell_environment_policy.set]` unter
`%USERPROFILE%\.codex\config.toml` ergänzt:

```toml
GIT_CONFIG_COUNT = "1"
GIT_CONFIG_KEY_0 = "credential.helper"
GIT_CONFIG_VALUE_0 = "manager"
```

Fehlt die Tabelle, wird sie einmalig angelegt. Eine automatische Zusammenführung
muss abgelehnt werden, sobald bereits ein `GIT_CONFIG_*`-Schlüssel existiert;
dessen Nummerierung kann zu einer anderen Git-Laufzeitkonfiguration gehören und
muss manuell kombiniert werden.

Die Werte verwenden Gits umgebungsbasierte Konfiguration im Command Scope. Sie
schreiben nicht in `.gitconfig` und enthalten weder Benutzernamen noch Passwort
oder Token.

## Prüfung

1. Codex vollständig neu starten, damit eine neue Shell-Umgebung erzeugt wird.
2. `scripts/Test-CodexGitCredential.ps1` aus diesem Repository durch Codex
   ausführen lassen.
3. In einem nicht sensitiven Repository mit HTTPS-Remote erst nach der normalen
   repositoriespezifischen Push-Freigabe `git push --dry-run` ausführen.

Explizite Freigabe und Kontrollwortregel für Git-Aktionen bleiben von der
Credential-Auswahl getrennt.

## Entfernung

Exakt die drei oben genannten `GIT_CONFIG_*`-Einträge aus der Codex-Konfiguration
entfernen und Codex neu starten. Andere Einträge in
`[shell_environment_policy.set]` bleiben unverändert.

## Grenzen

- Dieses Recipe installiert GCM nicht und authentifiziert kein Konto.
- SSH-Remotes verwenden SSH-Authentifizierung und liegen außerhalb des Umfangs.
- Muss GCM eine abgelaufene Anmeldung erneuern, kann weiterhin seine gewöhnliche
  Nutzerinteraktion notwendig sein.
- Codex-Sandbox oder Netzwerkregeln können weiterhin eine eigene Push-Freigabe
  verlangen.

## Quellen

- [Codex Shell Environment Policy](https://learn.chatgpt.com/docs/config-file/config-advanced#shell-environment-policy)
- [Git-Laufzeitkonfiguration über die Umgebung](https://git-scm.com/docs/git-config.html#ENVIRONMENT)
- [Git Credential Manager](https://github.com/git-ecosystem/git-credential-manager)
