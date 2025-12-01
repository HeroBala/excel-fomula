#!/bin/bash

# ─── Terminal-Pro Styled Excel Cheat Sheet ────────────────────────

# 🎨 Color Theme: High Contrast for Dark Terminals
BOLD="\033[1m"
RESET="\033[0m"

TITLE="\033[38;5;51m"       # Bright Cyan
HEADER="\033[38;5;203m"     # Soft Red
KEY="\033[38;5;220m"        # Gold Yellow
INFO="\033[38;5;118m"       # Light Green
DESC="\033[38;5;214m"       # Orange
GRAY="\033[38;5;238m"       # Border Gray

# ─── Box Drawing ───────────────────────────────────────────────────
LINE="────────────────────────────────────────────────────────────────────────────"
ROUND_TOP="╭────────────────────────────────────────────────────────────────────────────╮"
ROUND_BOTTOM="╰────────────────────────────────────────────────────────────────────────────╯"
SIDE="│"

# ─── Section Header ────────────────────────────────────────────────
section() {
  echo -e "\n${TITLE}${ROUND_TOP}"
  printf "${SIDE}  ${BOLD}%s${RESET}${TITLE}%*s${SIDE}\n" "$1" $((76 - ${#1})) ""
  echo -e "${ROUND_BOTTOM}${RESET}"
}

# ─── Function Block ────────────────────────────────────────────────
block() {
  printf "${HEADER}📌 Function:${RESET}  ${BOLD}%-15s${RESET}\n" "$1"
  printf "${KEY}🔣 Syntax:    ${RESET}%-60s\n" "$2"
  printf "${INFO}🧪 Example:   ${RESET}%-60s\n" "$3"
  printf "${DESC}🔧 Use Case:  ${RESET}%-60s\n" "$4"
  echo -e "${GRAY}${LINE}${RESET}"
}

# ─── Start Output ─────────────────────────────────────────────────
echo -e "${BOLD}${TITLE}📊 ADVANCED EXCEL FUNCTION CHEAT SHEET – Terminal Pro Edition${RESET}"

# Core Functions
section "📌 CORE FUNCTIONS"
block "SUM" "=SUM(A1:A10)" "=SUM(B2:B15)" "Calculate total expenses"
block "AVERAGE" "=AVERAGE(range)" "=AVERAGE(C2:C20)" "Find average sales per day"
block "IF" "=IF(condition, value_if_true, value_if_false)" "=IF(B2>=60, \"Pass\", \"Fail\")" "Pass/Fail based on score"
block "COUNTIF" "=COUNTIF(range, criteria)" "=COUNTIF(A2:A20, \">100\")" "Count sales > 100"

# Logical
section "🧠 LOGICAL FUNCTIONS"
block "AND" "=AND(condition1, condition2)" "=IF(AND(B2>60,C2>60),\"Yes\",\"No\")" "Passed both tests"
block "OR" "=OR(condition1, condition2)" "=IF(OR(D2=\"Yes\",E2=\"Yes\"),\"✓\",\"✗\")" "Any one true"
block "IFS" "=IFS(cond1,val1, cond2,val2,…)" "=IFS(A2<50,\"Low\",A2<80,\"Medium\",A2<=100,\"High\")" "Multi-tier grading"

# Lookup
section "🔗 LOOKUP FUNCTIONS"
block "VLOOKUP" "=VLOOKUP(value, table, col_index, FALSE)" "=VLOOKUP(102,A2:C10,2,FALSE)" "Find product price by ID"
block "HLOOKUP" "=HLOOKUP(value, table, row_index, FALSE)" "=HLOOKUP(\"Q2\", A1:D3, 2, FALSE)" "Horizontal data lookup"
block "XLOOKUP" "=XLOOKUP(value, lookup_array, return_array)" "=XLOOKUP(\"Apple\", A2:A10, B2:B10)" "Modern lookup function"
block "INDEX + MATCH" "=INDEX(range, MATCH(value, range, 0))" "=INDEX(B2:B10, MATCH(75,A2:A10,0))" "Flexible lookup"

# Math
section "🧮 MATH & STATS FUNCTIONS"
block "ROUND" "=ROUND(number, digits)" "=ROUND(C2, 2)" "Round price to 2 decimals"
block "RANK.EQ" "=RANK.EQ(number, range)" "=RANK.EQ(B2, B2:B10)" "Student ranking"
block "MOD" "=MOD(number, divisor)" "=MOD(A2,2)" "Check even/odd"
block "SUMPRODUCT" "=SUMPRODUCT(array1, array2)" "=SUMPRODUCT(A2:A5,B2:B5)" "Weighted total"

# Date & Time
section "📅 DATE & TIME FUNCTIONS"
block "TODAY" "=TODAY()" "=TODAY()" "Insert today's date"
block "NOW" "=NOW()" "=NOW()" "Insert current date & time"
block "DATEDIF" "=DATEDIF(start, end, unit)" "=DATEDIF(A1,B1,\"Y\")" "Calculate years between dates"
block "EDATE" "=EDATE(start, months)" "=EDATE(B2, 3)" "Add 3 months to date"

# Text
section "🧹 TEXT FUNCTIONS"
block "TEXTJOIN" "=TEXTJOIN(delimiter, TRUE, text1, …)" "=TEXTJOIN(\" \", TRUE, A2, B2)" "Full name join"
block "PROPER" "=PROPER(text)" "=PROPER(\"john doe\")" "Capitalize names"
block "LEN" "=LEN(text)" "=LEN(A2)" "Count characters"
block "LEFT/RIGHT" "=LEFT(text, num_chars)" "=LEFT(A2, 3)" "Extract text from left"

# Dynamic Arrays
section "🔁 DYNAMIC ARRAY FUNCTIONS"
block "UNIQUE" "=UNIQUE(range)" "=UNIQUE(A2:A20)" "Remove duplicates"
block "SORT" "=SORT(range, col, order)" "=SORT(A2:B10,2,-1)" "Sort by column descending"
block "FILTER" "=FILTER(array, condition)" "=FILTER(A2:B10,B2:B10>100)" "Filter sales > 100"
block "SEQUENCE" "=SEQUENCE(rows, columns, start, step)" "=SEQUENCE(5,1,1,1)" "Auto-numbering list"

# Footer
echo -e "\n${INFO}${BOLD}✅ Cheat Sheet Rendered Successfully!${RESET}"
echo -e "${GRAY}📘 Tip: Use 'bash excel_cheatsheet.sh | less -R' to scroll with preserved colors.${RESET}\n"

