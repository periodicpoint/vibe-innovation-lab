"""
Generic automation entry point for GitHub Actions.

Pattern: read inputs from input/, process them, write outputs to output/.
Swap the processing logic in main() for your own task. Examples:
file conversion, data aggregation, API calls, scraping, report generation.

This file ships with an OpenAI report-generation example as a starting point.
Replace the body of main() with your own logic and adjust requirements.txt
accordingly.
"""

import os
from pathlib import Path
from openai import OpenAI


def main():
    client = OpenAI(api_key=os.environ["OPENAI_API_KEY"])

    input_dir = Path("input")
    input_dir.mkdir(exist_ok=True)

    sample_file = input_dir / "sample.txt"
    if not any(input_dir.glob("*.txt")):
        sample_file.write_text(
            "Q1 revenue: 1.2M EUR. Q2 revenue: 1.5M EUR. "
            "Q3 revenue: 1.1M EUR. Q4 revenue: 1.8M EUR. "
            "Main cost driver: raw materials (+12% YoY). "
            "New product line launched in Q3."
        )

    documents = []
    for f in sorted(input_dir.glob("*.txt")):
        documents.append(f.read_text(encoding="utf-8"))

    if not documents:
        print("No input files found. Exiting.")
        return

    combined = "\n---\n".join(documents)

    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[
            {
                "role": "system",
                "content": (
                    "Du bist ein Business Analyst. "
                    "Erstelle einen kurzen, strukturierten Report "
                    "auf Basis der folgenden Daten. "
                    "Format: Zusammenfassung, Kernkennzahlen, Handlungsempfehlungen."
                ),
            },
            {"role": "user", "content": combined},
        ],
    )

    report_text = response.choices[0].message.content

    output_dir = Path("output")
    output_dir.mkdir(exist_ok=True)

    report_path = output_dir / "report.md"
    report_path.write_text(report_text, encoding="utf-8")

    print(f"Report generated: {report_path}")
    print(f"Tokens used: {response.usage.total_tokens}")


if __name__ == "__main__":
    main()
