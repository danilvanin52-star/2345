"""Bothost fallback entry; the Docker CMD runs the same reviewed supervisor."""
from pathlib import Path
import runpy,sys
root=Path('/opt/aisklad')
entry=root/'run_aisklad.py'
if not entry.is_file():
    raise SystemExit('В Bothost включи собственный Dockerfile и выполни полную пересборку из Git.')
sys.path.insert(0,str(root))
runpy.run_path(str(entry),run_name='__main__')
