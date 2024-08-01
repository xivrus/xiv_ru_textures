#!/usr/bin/pwsh

$CUTTLEFISH_PATH = "./cuttlefish/bin/cuttlefish"
if (-not (Test-Path -Path $CUTTLEFISH_PATH)) {
    Write-Error "Cuttlefish was not found at $CUTTLEFISH_PATH"
    return 1
}

$png_list_sd = Get-ChildItem -Path "./root_mod_png/*.png" -Recurse -File -Exclude "*_hr1.png"
$png_list_hd = Get-ChildItem -Path "./root_mod_png/*_hr1.png" -Recurse -File

$command_sd = "./cuttlefish/bin/cuttlefish --input {0} --mipmap 1 --format B8G8R8A8 --type unorm --output {1} --file-format dds --create-dir"

$command_hd = "./cuttlefish/bin/cuttlefish --input {0} --mipmap 1 --format BC3 --type unorm --output {1} --file-format dds --create-dir"

foreach ($png in $png_list_sd) {
    $png_path = $png.FullName
    $dds_path = $png_path `
        -creplace "/root_mod_png/", "/root_mod_png_dds/" `
        -creplace "\.png", ".dds"
    $command = $command_sd -f $png_path, $dds_path
    Invoke-Expression "$command"
}

foreach ($png in $png_list_hd) {
    $png_path = $png.FullName
    $dds_path = $png_path `
        -creplace "/root_mod_png/", "/root_mod_png_dds/" `
        -creplace "\.png", ".dds"
    $command = $command_hd -f $png_path, $dds_path
    Invoke-Expression "$command"
}

Remove-Item -Path ".\root_mod_png_dds_tex" -Recurse -ErrorAction SilentlyContinue
Invoke-Expression 'python3 ./ffxiv-tex-converter/ffxiv_tex_converter.py -d "./root_mod_png_dds" -c dds-to-tex -p'
Remove-Item -Path ".\root_mod_png_dds" -Recurse
