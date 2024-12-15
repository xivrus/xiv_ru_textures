# xiv_ru_textures

Russian textures for XIV Rus modpack / Русские текстуры для модпака XIV Rus

## Disclaimer

This repo utilizes resources and media produced and copyrighted by SQUARE ENIX. We do not own any of the original game assets. 

Этот репозиторий использует ресурсы и медиа, сделанные SQUARE ENIX. Права на эти ресурсы и медиа находятся за ними. Мы не владеем оригинальными ресурсами игры.

## Русский

### Инструменты

* [**SaintCoinach.Cmd**](https://github.com/xivapi/SaintCoinach) - извлечение текстур
* [**TexConv**](https://github.com/microsoft/DirectXTex) - конвертация текстур из PNG в DDS для Windows
* [**Cuttlefish**](https://github.com/akb825/Cuttlefish) - конвертация текстур из PNG в DDS для Linux
* [**ffxiv-tex-converter**](https://github.com/kartoffels123/ffxiv-tex-converter) - конвертация текстур из DDS в TEX (игровой формат)

### Рабочий процесс для текстурщика

1. Скачать **SaintCoinach.Cmd**, положить его туда, где есть хотя бы 15 Гб свободного места, и выполнить в командной строке следующую команду:\
   `.\SaintCoinach.Cmd.exe "путь\до\FINAL FANTASY XIV Online" ui uiHD`\
   Эта операция может занять до 30 минут, в зависимости от скорости вашего ПК и диска. В результате получится папка, в качестве названия которой выступает текущая версия игры. В этой папке будет множество папок с 6 цифрами в их названиях.
2. Склонировать этот репозиторий в отдельное место. Самая простая программа для этого - [GitHub Desktop](https://desktop.github.com/).
3. Папка `root_mod_png` должна следовать структуре файлов игры и содержать только модифицированные PNG. Посмотрите на текстуры, извлечённые SaintCoinach, выберите ту/те, над которой/ыми хотите работать, скопируйте в соответствующую папку в `root_mod_png` и приступайте.
   * Имейте в виду, что SaintCoinach автоматически извлекает только английские текстуры. На самом деле в каждой 6-циферной папке есть ещё папки с кодами языков. Т.е. в `root_mod_png` нужно ещё в 6-циферной папке создать папку `en` и уже туда класть модифицированные текстуры.

**Примечание 1:** Почти все текстуры имеют 2 версии: `XXXXXX.png` и `XXXXXX_hr1.png`. `_hr1` значит 'high-resolution'; такие текстуры в 2 раза больше обычных. Важно создавать обе версии текстуры, если так сделано в оригинале.

**Примечание 2:** В папках `.docs` and `.presets` хранятся некоторые шаблоны и документация. Приветствуется пополнение и/или реорганизация этой информации для себя и для других.

**Примечание 3:** Очень важно **не загружать** в этот репозиторий оригинальные файлы, поскольку они защищены авторскими правами SQUARE ENIX.

### Рабочий процесс для упаковщика

1. Установить требуемые компоненты:
   * Python 3.10
   * [Модули Python](https://github.com/emarron/ffxiv-tex-converter/tree/main?tab=readme-ov-file#required-python-libraries) для `ffxiv-tex-converter`
2. Склонировать этот репозиторий вместе с подмодулем
3. Windows: Скачать бинарник **TexConv** и положить его в корень этого репозитория. Путь до исполняемого файла должен быть: `.\texconv.exe`\
   Linux: Скачать последний релиз **Cuttlefish** и распаковать его в корень этого репозитория. Путь до исполняемого файла должен быть: `./cuttlefish/bin/cuttlefish`
4. Запустить `ConvertModToTex-Win.bat` или `ConvertModToTex-Linux.ps1` в зависимости от платформы

Готово, сконвертированные текстуры будут в папке `root_mod_png_dds_tex` и их можно использовать как есть. Например, в модпаке Penumbra (требуется сгенерировать JSON с перенаправлениями файлов) или импортировать как raw файлы в TexTools.

## English

### Tools

* [**SaintCoinach.Cmd**](https://github.com/xivapi/SaintCoinach) - texture extraction
* [**TexConv**](https://github.com/microsoft/DirectXTex) - конвертация текстур из PNG в DDS для Windows
* [**Cuttlefish**](https://github.com/akb825/Cuttlefish) - конвертация текстур из PNG в DDS для Linux
* [**ffxiv-tex-converter**](https://github.com/emarron/ffxiv-tex-converter) - texture conversion from DDS to TEX (in-game format)

### Workflow for a texturer

1. Get **SaintCoinach.Cmd**, place it somewhere with at least 15Gb of free space, and use the following command in command-line to extract all UI textures:\
   `.\SaintCoinach.Cmd.exe "path\to\FINAL FANTASY XIV Online" ui uiHD`\
   This can take up to 30 min depending on your PC and disk speed. You'll get a folder with current game version as a name that contains a lot of folders with 6 digits in their names.
2. Clone this repository in a separate place. [GitHub Desktop](https://desktop.github.com/) is a great user-friendly tool for that.
3. `root_mod_png` should contain only modded PNGs keeping the game's file structure. Look at the textures extracted by SaintCoinach tool, choose the one you want to work on, copy it into respective folder in `root_mod_png`.
   * Keep in mind that SaintCoinach extracts English versions of textures and avoids creation of `en` folders. Each 6-numbered folder must actually contain said `en` folder, and then that's where modded textures need to go.

**Note 1:** Almost all textures will have 2 versions: `XXXXXX.png` and `XXXXXX_hr1.png`. `_hr1` means 'high-resolution', they are 2x bigger than normal ones. It's important to create both of them.

**Note 2:** There are some docs and presets in `.docs` and `.presets` (in Russian).

**Note 3:** It's important to **not upload** original files in this repo, as they are copyrighted.

### Workflow for a packer

1. Install required components:
   * Python 3.10
   * [Python modules](https://github.com/emarron/ffxiv-tex-converter/tree/main?tab=readme-ov-file#required-python-libraries) for `ffxiv-tex-converter`
2. Clone this repository and its submodule
3. Windows: Download **TexConv** binary and place it at the root of this repo. Expected path to the executable: `.\texconv.exe`\
   Linux: Download the latest release of **Cuttlefish** and unpack it at the root of this repo. Expected path to the executable: `./cuttlefish/bin/cuttlefish`
4. Launch `ConvertModToTex-Win.bat` or `ConvertModToTex-Linux.ps1` depending on your platform

Done, converted textures will be in `root_mod_png_dds_tex` folder and they can be used by the game as is. E.g. you can put them in a Penumbra modpack (provided you also generate JSON with file redirections) or import as raw files in TexTools.
