# Pioneer — RFP Compliance Response Engine

An offline engine that turns RFP solicitation documents into requirement-by-requirement
compliance response packages: parses incoming PDFs, extracts individual requirements,
retrieves the most relevant supporting documentation, and drafts a compliance rating
and response for each line — output as DOCX, PDF, CSV, and JSON.

Built during an engineering internship on Motorola Solutions' Video Security & Access
team; this repo contains the **application code only**. The internal product/knowledge
base and any pricing data used at Motorola are not included — see `kb/README.md` for
how to point the engine at your own documents.

## How it works
1. **Parse** — extracts individual requirements from an RFP PDF.
2. **Retrieve** — BM25 search over a local documentation knowledge base finds the
   most relevant supporting material for each requirement.
3. **Ground** — a grounding guard blocks compliance ratings the retrieved
   documentation can't actually substantiate, rather than letting the model guess.
4. **Draft** — a local LLM (Ollama, fully offline — no data leaves the machine)
   drafts a response for each requirement.
5. **Package** — compiles the full response as DOCX, PDF, CSV, and JSON.

## Why offline
Built for environments where RFP content can't touch an external API: the entire
pipeline — retrieval, grounding, and drafting — runs on a local LLM via Ollama.

## Stack
`Python` · `FastAPI` · `Ollama (llama3.2:3b)` · `BM25` retrieval · `python-docx` / `reportlab`

## Status
Functional internal tool; this public version is the application shell with sample
document structure. Point `kb/` at your own documentation to use it.

Built by **Michael Suppan** — msuppan1304@gmail.com
