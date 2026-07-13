# GitHub Portfolio — Setup Guide

Recommended structure: **one repo per project + a profile README + a user site.**
Recruiters see your profile first; pinned repos with clean READMEs read like a
product shelf. Follow these steps in order (~25 minutes total).

## 1 · Profile README (the page recruiters see first)
1. Create a new **public** repo named **exactly your username** (e.g. `msuppan/msuppan`).
2. Add the file `PROFILE_README.md` from this kit as `README.md` in that repo.
3. Replace every `YOURUSERNAME` placeholder and add your LinkedIn URL.
GitHub renders this automatically at the top of github.com/YOURUSERNAME.

## 2 · AeroLab repo (already exists)
1. Add `README_aerolab.md` from this kit as `README.md` in your aerolab repo.
2. Take 2–3 screenshots (the tunnel mid-stall, the designer, Design Studio),
   drop them in a `docs/` folder, and the README's image links will work.
3. Confirm GitHub Pages is live and paste the URL into the README where marked.

## 3 · Project repos
For each of CORE Intel and the Kronos research platform:
1. Create a public repo (`core-intel`, `kronos-research`).
2. Add the matching README from this kit as `README.md`.
3. Push the code. **Before pushing, search the code for API keys, `.env`
   files, and email lists — remove them and add a `.gitignore`.** (You rotated
   an exposed key once before; this is the moment that habit pays off.)

## 4 · Pioneer — sanitize before pushing
Pioneer is going public this time, **application code only.** Before creating
the repo:
1. Run `scrub_check.sh` (in this kit) from inside your local Pioneer folder —
   it only reports, never deletes. Review every line it flags by hand.
2. Remove the `kb/` folder and **the merged pricing catalog / SKU-price
   matcher data** specifically — that's real Motorola pricing, separate from
   the general knowledge-base folder, and needs to come out too.
3. Check for `.env`, hardcoded paths (`C:\Users\...`), and any Avigilon/Motorola
   internal jargon in code comments or docstrings — genericize those.
4. Add the `.gitignore` the script suggests, then create the repo and push
   `README_pioneer.md` as `README.md`.
5. If anything in the script's output looks like it could be sensitive and
   you're not sure — leave it out and ask before pushing, not after.

## 5 · User site (your application page)
1. Create a repo named exactly `YOURUSERNAME.github.io`.
2. Put this kit's `index.html` (the application page) at its root, plus your
   resume as `Michael_Suppan_Resume.pdf`.
3. Settings → Pages → deploy from main. Your page goes live at
   `https://YOURUSERNAME.github.io` — that's the link for resumes and LinkedIn.

## 6 · Pin, in this order
On your profile, pin: **aerolab**, **core-intel**, **kronos-research**, and the
user-site repo. AeroLab first — it's the strongest.

## 7 · Last touches
- Profile photo, name, headline ("Mechanical Engineering @ UK '27") and
  location on your GitHub profile settings.
- Add the user-site URL to your GitHub profile's website field, your LinkedIn
  featured section, and your resume header.
