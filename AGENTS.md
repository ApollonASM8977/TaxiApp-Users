# AGENTS.md — TaxiApp-Users

**Read first.** The owner's rules for every project (mandatory checklists, synchronisation at the start and end of every session, standing rules) are in `AGENTS-master.md`, in the owner's private repository `agents-rules`, cloned at `~/agents-rules` on each of the owner's computers and loaded automatically by the global `~/.claude/CLAUDE.md`. Apply them before anything else. If they are not in your context, read `~/agents-rules/AGENTS-master.md` first; if you cannot, ask the owner before working. This file only holds what is specific to this project.

## This project

- **What it is**: Application Commune, taxi application (user side) with Firebase and Google Maps.
- **Category**: Personnel; public repository: nothing private may be written in it (no secret, no private matter).
- **Stack**: Flutter 3, Dart 3, Firebase (Auth, database, Storage), Google Maps.
- **Install, run, test**:
  - `flutter pub get`, `flutter run`; `flutter test` (widget test in `test/`) and `flutter analyze` before pushing.
  - `android/app/google-services.json` is committed (normal for Firebase): its API key must stay restricted in the Google Cloud console and the Firebase security rules must protect the data.
- **Branches**: work and test on `stg`; `main` is production and only receives work the owner has validated, merged from `stg` on the owner's OK. A push to `main` deploys: nothing.
- **Folder**: mini-PC `D:\My Project\Personnel\TaxiApp-Users`; on another computer, `~/agents-rules/sync-all.cmd` clones it in the same place under that computer's root.
- **Where we are**: `README.md`; create `docs/agent/HANDOFF.md` (and the other traces of the master file) as soon as real work starts here.
- **Rules learned on this project**: none yet.
