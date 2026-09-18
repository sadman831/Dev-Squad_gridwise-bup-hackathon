# GridWise LLM-Assisted Energy Optimization Service

A production-ready FastAPI service that interprets unstructured operator notes using Google Gemini (`gemini-3.6-flash`), applies deterministic guardrails, and solves a 24-hour linear programming energy optimization problem using Python (`PuLP` & `CBC`).

## Architecture Overview
1. **LLM Interpretation**: Parses natural language operator notes into structured JSON directives (e.g., solar reductions, battery reserves, grid caps).
2. **Deterministic Guardrails**: Validates hours (0-23), schema shapes, and numeric bounds before execution.
3. **Mathematical Optimization**: Uses PuLP to minimize total electricity cost while satisfying energy balances, battery state-of-charge limits, rate limits, and operator constraints.

## Requirements & Environment Variables
- Python 3.10+
- **`GEMINI_API_KEY`**: Required environment variable for Google GenAI API access.

## Local Quickstart Guide
1. Clone the repository and navigate into the project directory.
2. Create and activate a virtual environment:
   ```bash
   python -m venv venv
   source venv/Scripts/activate  # On Windows Git Bash