find Plots/ -name "*.pdf" | sed 's/$/.png/' | tr '\n' '\0' | xargs -0 redo-ifchange
