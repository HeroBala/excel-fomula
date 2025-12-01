**Excel-formula In Your Terminal**

A lightweight command-line tool that enables you to instantly search and reference Excel formulas directly from the terminal—without opening Excel, a browser, or any external application. This utility is designed for fast lookup, improved productivity, and seamless integration into any workflow.

📘 Overview

Remembering Excel formulas can interrupt your workflow. This script provides quick access to essential formulas, definitions, and examples using a single command, allowing you to stay focused and efficient.

✨ Features

Instant Lookup: Retrieve Excel formula descriptions and syntax instantly.

Cross-Platform: Works on macOS, Linux, and Windows (via Git Bash or WSL).

One-Command Access: Use a simple terminal alias to run the tool from anywhere.

Zero Dependencies: Lightweight script with no external packages required.

Customizable: Add or update formulas easily.

📦 Installation
1. Clone the Repository
git clone https://github.com/herobala/excel-formula.git
cd excel-formula

2. Make the Script Executable
chmod +x excel-formula.sh

🔧 Optional: Create a Global Alias

To run the tool from any directory, add an alias to your shell profile.

macOS / Linux
echo 'alias excel-formula="bash ~/Myscripts/scripts/excel-formula.sh"' >> ~/.bashrc
source ~/.bashrc
**(Adjust the path if your script is stored elsewhere.)**
Windows (Git Bash / WSL)
echo 'alias excel-formula="bash ~/Myscripts/scripts/excel-formula.sh"' >> ~/.bashrc
source ~/.bashrc


**(Adjust the path if your script is stored elsewhere.)**

▶️ Usage

Run the tool with:

excel-formula


To look up a specific formula:

excel-formula VLOOKUP


Example Output:

VLOOKUP(lookup_value, table_array, col_index_num, [range_lookup])

Searches for a value in the first column of a table and returns a value in the same row from a specified column.

📚 Supported Formula Types

Lookup & Reference: VLOOKUP, XLOOKUP, INDEX, MATCH

Math & Statistics: SUM, AVERAGE, ROUND, COUNTIF, SUMIF

Text Functions: LEFT, RIGHT, MID, TEXT, CONCAT

Logical: IF, AND, OR, NOT

…and many more

🤝 Contributing

Enhancements, new formula entries, improvements, and optimizations are welcome.
Submit a pull request or open an issue to discuss ideas.
<img width="1440" height="900" alt="image" src="https://github.com/user-attachments/assets/2b229c96-5630-41c0-91c8-e0835bf754ec" />


📄 License

Released under the MIT License.
You are free to use, modify, and distribute this tool.
