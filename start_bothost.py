"""Fallback entrypoint for Bothost; the Dockerfile unpacks the actual code."""
from pathlib import Path
import runpy
import sys

root=Path('/opt/funpay')
entry=root/'start_bothost.py'
if not entry.is_file():
    raise SystemExit('В Bothost включи «Использовать собственный Dockerfile» и выполни сборку заново.')
sys.path.insert(0,str(root))
runpy.run_path(str(entry),run_name='__main__')
