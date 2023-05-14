.\texconv.exe -r:keep -f B8G8R8A8_UNORM -m 1 -dx10 -srgb -o ".\root_mod_png_dds" -y ".\root_mod_png\*.png"
.\texconv.exe -r:keep -f BC3_UNORM -m 1 -dx10 -srgb -o ".\root_mod_png_dds" -y ".\root_mod_png\*_hr1.png"
rmdir /s /q .\root_mod_png_dds_tex
python3.10 .\ffxiv-tex-converter\run.py -d ".\root_mod_png_dds" -c dds-to-tex -p -m 4
rmdir /s /q .\root_mod_png_dds
