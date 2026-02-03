
---

# ✅ `grade_lab1.sh`  
*(Same script logic — ready to live in the repo root)*

```bash
#!/usr/bin/env bash
# grade_lab1.sh - Student-run autograder for Linux Filesystem Lab
# Course: CNG 2001
# Lab: Linux Filesystem / Exploring Your Virtual Machine

set -u

LAB_DIR="$HOME/linux_lab"
WEEK1_DIR="$LAB_DIR/projects/week1"
INTRO_FILE="$LAB_DIR/intro.txt"
PROJECT_INTRO="$WEEK1_DIR/project_intro.txt"
NOTES_DIR="$LAB_DIR/notes"
USERNAME="$(whoami)"
RESULTS_FILE="lab1_results_${USERNAME}.txt"

score=0
total=10

pass() { echo "✅ PASS: $1"; }
fail() { echo "❌ FAIL: $1"; }
add_points() { score=$((score+$1)); }

echo "Linux Filesystem Lab - Auto-Grader"
echo "User: $USERNAME"
echo "Date: $(date)"
echo "----------------------------------------"

# 1) Base directory exists (2 points)
if [ -d "$LAB_DIR" ]; then
  pass "Found lab directory: $LAB_DIR"
  add_points 2
else
  fail "Missing lab directory: $LAB_DIR"
fi

# 2) week1 directory exists (2 points)
if [ -d "$WEEK1_DIR" ]; then
  pass "Found required directory: $WEEK1_DIR"
  add_points 2
else
  fail "Missing required directory: $WEEK1_DIR"
fi

# 3) intro.txt exists (1 point)
if [ -f "$INTRO_FILE" ]; then
  pass "Found file: $INTRO_FILE"
  add_points 1
else
  fail "Missing file: $INTRO_FILE"
fi

# 4) intro.txt contains required lines (3 points)
if [ -f "$INTRO_FILE" ]; then
  for field in Name Course Lab; do
    if grep -q "^$field:" "$INTRO_FILE"; then
      pass "intro.txt contains '$field:'"
      add_points 1
    else
      fail "intro.txt missing '$field:' line"
    fi
  done
else
  fail "Skipping content checks because intro.txt does not exist"
fi

# 5) project_intro.txt exists (1 point)
if [ -f "$PROJECT_INTRO" ]; then
  pass "Found renamed file: $PROJECT_INTRO"
  add_points 1
else
  fail "Missing renamed file: $PROJECT_INTRO"
fi

# 6) notes directory removed (1 point)
if [ ! -d "$NOTES_DIR" ]; then
  pass "notes directory removed"
  add_points 1
else
  fail "notes directory still exists"
fi

echo "----------------------------------------"
echo "Score: $score / $total"

# Write submission file
{
  echo "Linux Filesystem Lab Results"
  echo "User: $USERNAME"
  echo "Date: $(date)"
  echo
  echo "Score: $score / $total"
  echo
  echo "Filesystem snapshot:"
  echo "----------------------------------------"
  if [ -d "$LAB_DIR" ]; then
    ls -Rlah "$LAB_DIR"
  else
    echo "linux_lab directory not found."
  fi
} > "$RESULTS_FILE"

echo
echo "Submission file created: $RESULTS_FILE"

