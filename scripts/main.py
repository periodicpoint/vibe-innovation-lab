"""Generic automation entry point for GitHub Actions.

Reads .txt files from input/, computes per-file line, word, and character
counts, and writes a Markdown report to output/report.md. Uses only the Python
standard library, so the workflow runs end-to-end in a fresh fork without any
secret configuration.

Pattern: read inputs from input/, process them, write outputs to output/.
Swap the body of main() for your own task logic. Add packages to
requirements.txt if your replacement needs them.
"""

from __future__ import annotations

from datetime import datetime, timezone
from pathlib import Path


def main() -> None:
    input_dir = Path("input")
    output_dir = Path("output")
    input_dir.mkdir(exist_ok=True)
    output_dir.mkdir(exist_ok=True)

    if not any(input_dir.glob("*.txt")):
        sample = input_dir / "sample.txt"
        sample.write_text(
            "Q1 revenue: 1.2M EUR. Q2 revenue: 1.5M EUR. "
            "Q3 revenue: 1.1M EUR. Q4 revenue: 1.8M EUR. "
            "Main cost driver: raw materials (+12% YoY). "
            "New product line launched in Q3.",
            encoding="utf-8",
        )

    documents = sorted(input_dir.glob("*.txt"))
    if not documents:
        print("No input files found. Exiting.")
        return

    rows: list[tuple[str, int, int, int]] = []
    total_lines = 0
    total_words = 0
    total_chars = 0
    for path in documents:
        text = path.read_text(encoding="utf-8")
        lines = len(text.splitlines())
        words = len(text.split())
        chars = len(text)
        rows.append((path.name, lines, words, chars))
        total_lines += lines
        total_words += words
        total_chars += chars

    timestamp = datetime.now(timezone.utc).isoformat(timespec="seconds")

    report_lines = [
        "# Aggregation report",
        "",
        f"Generated: {timestamp}",
        "",
        "## Per-file statistics",
        "",
        "| File | Lines | Words | Characters |",
        "|---|---|---|---|",
    ]
    for name, lines, words, chars in rows:
        report_lines.append(f"| {name} | {lines} | {words} | {chars} |")
    report_lines.extend(
        [
            "",
            "## Totals",
            "",
            f"1. Files processed: {len(documents)}",
            f"2. Total lines: {total_lines}",
            f"3. Total words: {total_words}",
            f"4. Total characters: {total_chars}",
            "",
        ]
    )

    report_path = output_dir / "report.md"
    report_path.write_text("\n".join(report_lines), encoding="utf-8")

    print(f"Report generated: {report_path}")
    print(f"Files processed: {len(documents)}, total words: {total_words}")


if __name__ == "__main__":
    main()
