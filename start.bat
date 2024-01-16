@echo off

set FASTAPI_PORT=5000
set STREAMLIT_PORT=8501

REM Lancer FastAPI sur le fond
start cmd /c "uvicorn main:app --host=0.0.0.0 --port=%FASTAPI_PORT% > fastapi.log"

REM Attendre quelques secondes avant de lancer Streamlit
timeout /nobreak /t 5 > nul

REM Lancer Streamlit
start cmd /c "streamlit run dashboard.py --server.port %STREAMLIT_PORT%"