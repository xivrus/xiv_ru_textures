# I don't remember why I did this
Remove-Item -Path .\root_original\ui\uld -Filter * -Exclude @( '*_en.tex', '*_en_hr1.tex' )

python3.10 .\ffxiv-tex-converter\run.py -d ".\root_original" -c tex-to-dds -p -m 4
