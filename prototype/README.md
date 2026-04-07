# Prototyping infrastructure

Streamlit starter for Phase 4 (Build and validate) of the Vibe Innovation Framework. Designed for vibe coding: you describe what you want, the LLM writes the code.

## Quick start with GitHub Codespaces

1. Click the green **Code** button in the GitHub repository.
2. Select the **Codespaces** tab.
3. Click **Create codespace on main**.
4. Wait 1 to 2 minutes for the environment to set up.
5. Start the app in the terminal:

```bash
streamlit run prototype/app.py
```

6. In the **PORTS** tab, click the globe icon next to port 8501 to open the app in the browser.

## Local development

```bash
cd prototype
pip install -r requirements.txt
streamlit run app.py
```

## Workflow

1. Describe to the LLM what the prototype should do.
2. Copy the generated code into `app.py`.
3. Save (Ctrl+S). Click "Always rerun" in the app.
4. Repeat.

## Installed libraries

1. `streamlit`: web apps and dashboards
2. `pandas`, `numpy`: data analysis and calculations
3. `plotly`, `altair`, `matplotlib`, `seaborn`: visualizations
4. `graphviz`: flowcharts
5. `Pillow`: image processing
6. `fpdf`: PDF generation
7. `openpyxl`: Excel files
8. `streamlit-extras`, `streamlit-option-menu`: additional widgets
