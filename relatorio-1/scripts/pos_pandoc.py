#!/usr/bin/env python3
"""Converte capítulos LaTeX (unbtex) em Typst para o template unb-templante.
Uso: python3 scripts/pos_pandoc.py   (executar a partir de convertido/)"""
import re, subprocess, pathlib

SRC = pathlib.Path("../6.tex/unbtex-example")
OUT = pathlib.Path("conteúdo")
ARQS = {"capitulo1": "cap1", "capitulo2": "cap2", "capitulo3": "cap3",
        "capitulo4": "cap4", "capitulo5": "cap5", "apendice-a": "apendice-a"}

def pre(tex):
    tex = tex.replace(r"\citeonline", r"\cite")
    tex = tex.replace("\\end{tabular}}", "\\end{tabular}", 1) if "resizebox" not in tex else tex
    # formatação manual que o template já cuida
    tex = re.sub(r"\\(centering|noindent|medskip|bigskip|smallskip|newpage|clearpage|small|footnotesize)\b", "", tex)
    tex = re.sub(r"\\vspace\*?\{[^}]*\}", "", tex)
    tex = re.sub(r"\\resizebox\{[^}]*\}\{[^}]*\}\{%?", "", tex)  # remove abertura
    tex = re.sub(r"\\end\{tabular\}\}", r"\\end{tabular}", tex)   # e o '}' de fechamento
    return tex

def pos(t):
    t = re.sub(r'"(?:\.\./|unbtex-example/)*figuras/', '"../figuras/', t)
    t = re.sub(r"\.\./figuras/(?:unbtex-example/)?(?:\.\./)*figuras/", "../figuras/", t)
    t = t.replace("../figuras/unbtex-example/figuras/", "../figuras/")
    t = re.sub(r'"[^"]*unbtex-example/figuras/', '"../figuras/', t)
    t = re.sub(r'#cite\("([^"]+)"\)', r"#cite(<\1>)", t)
    # tabelas: pandoc perde o figure -> reconstrói com legenda e rótulo
    t = re.sub(r"(<tab:[^>]+>)\n#align\(center\)\[(#table\(.*?\n\))\n#align\(center, \[(.*?)\]\)\n\]",
               lambda m: "#figure(\n" + m.group(2).replace("#table", "table", 1) + ",\n  caption: [" + m.group(3) + "],\n  kind: table,\n) " + m.group(1), t, flags=re.S)
    # refs cruzadas: #link(<x>)[...] -> @x
    t = re.sub(r"#link\(<([^>]+)>\)\[[^\]]*\]", r"@\1", t)
    # \boxed, \multicolumn etc. ficam marcados
    for pat in (r"\\boxed", r"\\multicolumn", r"\\cline", r"\\hline"):
        t = re.sub(pat, lambda m: "/* TODO latex: " + m.group(0) + " */", t)
    return t

for tex, nome in ARQS.items():
    src = pathlib.Path("tmp") / f"{tex}.tex"
    src.write_text(pre((SRC / f"{tex}.tex").read_text()))
    r = subprocess.run(["pandoc", str(src), "-f", "latex", "-t", "typst"],
                       capture_output=True, text=True)
    if r.returncode:
        print("ERRO pandoc", tex, r.stderr[:300]); continue
    out = pos(r.stdout)
    if nome.startswith("apendice"):  # figuras de apêndice não entram na lista de figuras
        out = out.replace("#figure(", "#figure(outlined: false, ")
    (OUT / f"{nome}.typ").write_text(out)
    print("ok", nome)
