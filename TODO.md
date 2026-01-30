#

- [ ] Add a minimal API: create `app/main.py` (FastAPI) with a `/health` endpoint and a small CRUD example (SQLite or in-memory for now).
- [ ] Add `requirements.txt` with `fastapi`, `uvicorn`, `pytest` (and `sqlalchemy`/`psycopg2-binary` Postgres).
- [ ] Add basic tests in `app/tests/` — a health-check test and one CRUD test so CI has something to run.
- [ ] Update CI (`.github/workflows/ci-cd.yml`) to install dependencies, run tests, and build/push the Docker image to the registry you choose.
- [ ] Configure GitHub Secrets for deploy: `DOCKER_USERNAME`, `DOCKER_PASSWORD`, `DEPLOY_SSH_KEY` (or use names you prefer).
- [ ] Run tests locally, fix any issues, then commit and push.
- [ ] Optional: add a `systemd` unit file and server bootstrap docs in `scripts/` for automated server setup.

Quick commands I'll run locally once the app exists:

```bash
python -m venv .venv
# Windows PowerShell: .venv\\Scripts\\Activate.ps1
# macOS/Linux: source .venv/bin/activate
pip install -r requirements.txt
uvicorn app.main:app --reload
pytest
```
