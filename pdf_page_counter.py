from pdfreader import PDFDocument
from glob import glob

PATH = "./lilypond/bin_nashville/"
PDF_PAGES_COUNTER_FILE = "pdf_page_counter.txt"

lines = []

for file in glob(f"{PATH}*.pdf"):
    with open(file, 'rb') as pdf:
        doc = PDFDocument(pdf)
        file = file.replace(PATH, "")
        lines.append(f"{file},{len(list(doc.pages()))}\n")

lines.sort()

with open(PDF_PAGES_COUNTER_FILE, "w") as f:
    f.writelines(lines)
