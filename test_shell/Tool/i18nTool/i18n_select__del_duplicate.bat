@echo off

set mode=12
set workdir=%~dp0
set ConfigExcelDir=%workdir%..\..\Resource\Source\table\
set I18NStringPath=%workdir%..\..\Resource\Source\Localization\
set StringLibPath=%workdir%..\..\Resource\Source\Localization\StringLib.xlsx
set I18NCodeDir=%workdir%..\..\Excalibur\Assets\Scripts\Excalibur\I18N\Language\
set ExportTbxDir=%workdir%..\..\Resource\Exported\Config\
set DslDir=%workdir%..\..\Resource\Source\Config
set TranslationFilePath=%workdir%\Translated.xlsx

@echo on
%workdir%core\TextTool.exe %mode% %ConfigExcelDir% %I18NStringPath% %StringLibPath% %I18NCodeDir% %ExportTbxDir% %DslDir% %TranslationFilePath% %1

@echo off
pause
