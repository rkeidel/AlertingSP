[#ftl]
@ECHO OFF
[#if symapi.path??]
set PATH=%PATH%;${symapi.path}
[#else]
set PATH=%PATH%;C:\Program Files\EMC\SYMCLI\bin
[/#if]
[#if symapi.connect_type == 'remote']
set SYMCLI_CONNECT=${symapi.connect}
[/#if]
set SYMCLI_CONNECT_TYPE=${symapi.connect_type}
SET ONE=%~1
SET TWO=%~2
SET THREE=%~3
SET FOUR=%~4
SET FIVE=%~5
SET SIX=%~6
SET SEVEN=%~7
SET EIGHT=%~8
SET NINE=%~9
SHIFT
SHIFT
SHIFT
SHIFT
SHIFT
SHIFT
SHIFT
SHIFT
SHIFT
SET TEN=%~1
SET ELEVEN=%~2
SET TWELVE=%~3
SET THIRTEEN=%~4
SET FOURTEEN=%~5
SET SIXTEEN=%~6
SET SEVENTEEN=%~7
SET EIGHTEEN=%~8
SET NINETEEN=%~9
%ONE% %TWO% %THREE% %FOUR% %FIVE% %SIX% %SEVEN% %EIGHT% %NINE% %TEN% %ELEVEN% %TWELVE% %THIRTEEN% %FOURTEEN% %SIXTEEN% %SEVENTEEN% %EIGHTEEN% %NINETEEN%