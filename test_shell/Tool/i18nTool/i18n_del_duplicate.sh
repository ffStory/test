#!/bin/bash

workdir=$(cd "$(dirname "$0")";pwd -P)
export PATH=/Library/Frameworks/Mono.framework/Versions/Current/Commands:$PATH
chmod +x $workdir/core/TextTool.exe

mode=11
ConfigExcelDir=$workdir/../../Resource/Source/table/
I18NStringPath=$workdir/../../Resource/Source/Localization/
StringLibPath=$workdir/../../Resource/Source/Localization/StringLib.xlsx
I18NCodeDir=$workdir/../../Excalibur/Language/
ExportTbxDir=$workdir/../../Resource/Exported/Config/
DslDir=$workdir/../../Resource/Source/Config
TranslationFilePath=$workdir/Translated.xlsx
mono $workdir/core/TextTool.exe $mode $ConfigExcelDir $I18NStringPath $StringLibPath $I18NCodeDir $ExportTbxDir $DslDir $TranslationFilePath



echo 按任意键继续
read -n 1
echo 继续运行
exit 0

