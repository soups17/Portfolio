#!/usr/bin/env bash
# Run this from inside your Pioneer project folder BEFORE pushing to GitHub.
# It only reports — it never deletes or modifies anything.
echo "=== 1. Folders/files that look like they hold real company data ==="
find . -type d \( -iname "kb" -o -iname "*knowledge*" -o -iname "*datasheet*" \) 2>/dev/null
find . -type f \( -iname "*price*" -o -iname "*catalog*" -o -iname "*.csv" -o -iname "*pricing*" \) 2>/dev/null

echo -e "\n=== 2. Secrets / env files ==="
find . -iname ".env*" -o -iname "*secret*" -o -iname "*credentials*" 2>/dev/null

echo -e "\n=== 3. Company/product name mentions in code & docs (grep, case-insensitive) ==="
grep -rniE "avigilon|motorola|internal use only|confidential|proprietary" \
  --include="*.py" --include="*.md" --include="*.json" --include="*.yaml" --include="*.txt" . 2>/dev/null | head -50

echo -e "\n=== 4. Anything that looks like a real dollar price or SKU pattern ==="
grep -rniE "\\\$[0-9]{2,}|SKU[- ]?[0-9]{3,}" \
  --include="*.py" --include="*.json" --include="*.csv" . 2>/dev/null | head -30

echo -e "\n=== 5. Suggested .gitignore additions ==="
cat <<'GI'
kb/
*.csv
*price*
*.env
.env.*
__pycache__/
*.pyc
.venv/
outputs/
GI
echo -e "\nReview every hit above by hand. Nothing here should be assumed safe just because it didn't match."
