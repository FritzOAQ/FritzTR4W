program tr4w;
{$IMPORTEDDATA OFF}
//https://groups.google.com/group/tr4w/feeds?hl=ru
uses
  Messages,
  MMSystem,
  Windows,
  MainUnit in 'src\MainUnit.pas',
  BeepUnit in 'src\trdos\BeepUnit.pas',
  CFGCMD in 'src\trdos\CfgCmd.pas',
  CFGDEF in 'src\trdos\CFGDEF.PAS',
  FCONTEST in 'src\trdos\FCONTEST.PAS',
  LogCfg in 'src\trdos\LogCfg.pas',
  LogCW in 'src\trdos\LogCW.pas',
  LogDom in 'src\trdos\LOGDOM.PAS',
  LogDupe in 'src\trdos\LOGDUPE.PAS',
  LOGDVP in 'src\trdos\LOGDVP.PAS',
  LogEdit in 'src\trdos\LOGEDIT.PAS',
  LogGrid in 'src\trdos\LOGGRID.PAS',
  LogK1EA in 'src\trdos\LOGK1EA.PAS',
  LogNet in 'src\trdos\LOGNET.PAS',
  LogPack in 'src\trdos\LOGPACK.PAS',
  LogRadio in 'src\trdos\LOGRADIO.PAS',
  LogSCP in 'src\trdos\LOGSCP.PAS',
  LogStuff in 'src\trdos\LOGSTUFF.PAS',
  LOGWAE in 'src\trdos\LOGWAE.PAS',
  LogWind in 'src\trdos\LOGWIND.PAS',
  Tree in 'src\trdos\tree.pas',
  ZoneCont in 'src\trdos\ZONECONT.PAS',
  LOGSUBS2 in 'src\trdos\LOGSUBS2.PAS',
  LOGSUBS1 in 'src\trdos\LOGSUBS1.PAS',
  LOGSend in 'src\trdos\LogSend.pas',
  uCT1BOH in 'src\uCT1BOH.pas',
  PostUnit in 'src\trdos\PostUnit.PAS',
  uInputQuery in 'src\uInputQuery.pas',
  uNewContest in 'src\uNewContest.pas',
  uRadioPolling in 'src\uRadioPolling.pas',
  uMissingMults in 'src\uMissingMults.pas',
  uEditQSO in 'src\uEditQSO.pas',
  uLogSearch in 'src\uLogSearch.pas',
  uBeacons in 'src\uBeacons.pas',
  uNet in 'src\uNet.pas',
  uTotal in 'src\uTotal.pas',
  uMaster in 'src\uMaster.pas',
  uRemMults in 'src\uRemMults.pas',
  uDupesheet in 'src\uDupesheet.pas',
  uSendSpot in 'src\uSendSpot.pas',
  uSendKeyboard in 'src\uSendKeyboard.pas',
  uOption in 'src\uOption.pas',
  uRadio12 in 'src\uRadio12.pas',
  uFunctionKeys in 'src\uFunctionKeys.pas',
  uinet in 'src\uinet.pas',
  uTelnet in 'src\uTelnet.pas',
  uBandmap in 'src\uBandmap.pas',
  uFileView in 'src\uFileView.pas',
  uAutoCQ in 'src\uAutoCQ.pas',
  uCAT in 'src\uCAT.pas',
  uDialogs in 'src\uDialogs.pas',
  VC in 'src\VC.pas',
  uCommctrl in 'src\uCommctrl.pas',
  uGradient in 'src\uGradient.pas',
  uMessages in 'src\uMessages.pas',
  uWinManager in 'src\uWinManager.pas',
  uCbrSum in 'src\uCbrSum.pas',
  uQTCR in 'src\uQTCR.pas',
  uQTCS in 'src\uQTCS.pas',
  LPT in 'src\LPT.pas',
  uGetServerLog in 'src\uGetServerLog.pas',
  TF in 'src\TF.pas',
  uLogEdit in 'src\uLogEdit.pas',
  uIntercom in 'src\uIntercom.pas',
  uLogCompare in 'src\uLogCompare.pas',
  uMixW in 'src\uMixW.pas',
  uCallsigns in 'src\uCallsigns.pas',
  uSpots in 'src\uSpots.pas',
  uGetScores in 'src\uGetScores.pas',
  uStations in 'src\uStations.pas',
  uAltD in 'src\uAltD.pas',
  uWinKey in 'src\uWinKey.pas',
  uCFG in 'src\uCFG.pas',
  uCRC32 in 'src\uCRC32.pas',
  uMP3Recorder in 'src\uMP3Recorder.pas',
  uAltP in 'src\uAltP.pas',
  uEditMessage in 'src\uEditMessage.pas',
  uCheckLatestVersion in 'src\uCheckLatestVersion.pas',
  uErmak in 'src\uErmak.pas',
  uProcessCommand in 'src\uProcessCommand.pas',
  uMults in 'src\uMults.pas',
  HtmlHelp in 'src\HtmlHelp.pas',
  uSSL in 'src\uSSL.pas',
  uQuickEdit in 'src\uQuickEdit.pas',
  uIO in 'src\uIO.pas',
  uBMCF in 'src\uBMCF.pas',
  uCTYDAT in 'src\uCTYDAT.PAS',
  uCallSignRoutines in 'src\uCallSignRoutines.pas',
  uSynTime in 'src\uSynTime.pas',
  uMMTTY in 'src\uMMTTY.pas',
  uProfiler in 'src\uProfiler.pas',
  uMessagesList in 'src\uMessagesList.pas',
  uRussiaOblasts in 'src\uRussiaOblasts.pas',
  uMenu in 'src\uMenu.pas',
  winsock2 in '..\include\WinSock2.pas',
  utils_net in 'src\utils\utils_net.pas',
  utils_hw in 'src\utils\utils_hw.pas',
  utils_text in 'src\utils\utils_text.pas',
  utils_math in 'src\utils\utils_math.pas',
  utils_file in 'src\utils\utils_file.pas',
  exportto_trlog in 'src\exportto_trlog.pas';

{$IF LANG = 'ENG'}{$R res\tr4w_eng.res}{$IFEND}
{$IF LANG = 'RUS'}{$R res\tr4w_rus.res}{$IFEND}
{$IF LANG = 'SER'}{$R res\tr4w_ser.res}{$IFEND}
{$IF LANG = 'ESP'}{$R res\tr4w_esp.res}{$IFEND}
{$IF LANG = 'MNG'}{$R res\tr4w_mng.res}{$IFEND}
{$IF LANG = 'POL'}{$R res\tr4w_pol.res}{$IFEND}
{$IF LANG = 'CZE'}{$R res\tr4w_cze.res}{$IFEND}
{$IF LANG = 'ROM'}{$R res\tr4w_rom.res}{$IFEND}
{$IF LANG = 'CHN'}{$R res\tr4w_chn.res}{$IFEND}

function WindowProc(TRHWND: HWND; Msg: UINT; wParam: wParam; lParam: lParam): longword; stdcall;

label
  GoToExit, CallDefWindowProc;
begin

  case Msg of

//    WM_POWERBROADCAST: ShowMessage(PChar('WM_POWERBROADCAST' + IntToStr(wParam)));

    WM_DISPLAYCHANGE: if wParam <= 8 then tEightBitsPerPixel := True else tEightBitsPerPixel := False;

//    WM_MOUSEWHEEL: SetStackPointerOnMouseWheel(SHORT(HiWord(Cardinal(wParam))));
    WM_TRAYBALLON:
      begin
//        ShowMessage(inttopchar(lParam));
//        if (LoWord(lParam) = NIN_BALLOONTIMEOUT) or (LoWord(lParam) = NIN_BALLOONUSERCLICK) then Balloon_DeleteTrayIcon;
{
        if lParam <> 1026 then //��������� ����
          if lParam <> 1028 then //�������� ����
            if lParam <> 512 then //mouse move
}

      end;
    WM_TIMECHANGE:
      begin
        GetSystemTime(UTC);
        SystemTimeChanging;
      end;

    //    WM_CONTEXTMENU: if HWND(wParam) = _NewELogWindow then ShowLogPopupMenu(tr4whandle);

{$IF MMTTYMODE}
    WM_SIZE:
      begin
        if MMTTY.MMTTYEngine <> 0 then
        begin
          if wParam = SIZE_MINIMIZED then Windows.ShowWindow(MMTTY.MMTTYEngine, SW_SHOWMINNOACTIVE);
          if wParam = SIZE_RESTORED then Windows.ShowWindow(MMTTY.MMTTYEngine, SW_RESTORE);
        end;
      end;
{$IFEND}

    WM_WINDOWPOSCHANGING: WINDOWPOSCHANGINGPROC(PWindowPos(lParam));
    WM_NOTIFY:
      begin

//        if (PNMHdr(lParam)^.hWndFrom = SettingshLV) then sm;

        with PNMHdr(lParam)^ do

          if (hWndFrom = wh[mweEditableLog]) then
            case code of
              //              NM_RELEASEDCAPTURE: FrmSetFocus;
              NM_DBLCLK: EditableLogWindowDblClick;

              NM_SETFOCUS:
                begin
                  ActiveMainWindow := awEditableLog;
//                  EditabledLogFocused := True;
                  //                  ListView_EditLabel(_NewELogWindow,2);
                end;
              NM_KILLFOCUS:
                begin
///                  EditabledLogFocused := False;
                  //                           LogEnsureVisible;
                end;
              //              NM_SETCURSOR: SM;
               {
              NM_CUSTOMDRAW:
                begin
                  lplvcd := PNMLVCustomDraw(lParam);

                  case lplvcd.nmcd.dwDrawStage of
                    CDDS_PREPAINT:
                      begin
                        RESULT := CDRF_NOTIFYITEMDRAW;
                        Exit;
                      end;
                    CDDS_ITEMPREPAINT:
                      begin
                        if lplvcd.nmcd.dwItemSpec = 1 then
                        begin
                          lplvcd.clrText := $00FF0000;
                          lplvcd.clrTextBk:=$0000FFFF;
                        end;
                      end;
                  end;
                end;
                }
            end
          else
//            if PNMHdr(lParam)^.code = NM_RELEASEDCAPTURE then              FrmSetFocus;
      end;
    WM_MEASUREITEM: if wParam = MainWindowPCLID then
        PMeasureItemStruct(lParam).itemHeight := ws;

    WM_DRAWITEM:
      begin
        if wParam = MainWindowPCLID then
          PossibleCallsProc(PDrawItemStruct(lParam));
        //        if wParam > 999 then        BandButtonsProc(Pointer(lParam));
        //        if wParam = MainWindowELLID then EditableLogProc(Pointer(lParam));
      end;

    //    wm_move: FindAndSaveRectOfAllWindows;
    WM_LBUTTONDOWN: DragWindow(TRHWND);
    //      PostMessage(tr4whandle, WM_NCRBUTTONDOWN, HTMENU, 0);

//    WM_KILLFOCUS: ActiveMainWindow := awUnknown;

//  asm nop end;
//      Windows.SetWindowText(InsertWindowHandle, inttopchar(wParam));

    WM_SETFOCUS:
      begin
        if ActiveMainWindow = awExchangeWindow then
          tExchangeWindowSetFocus
        else
          tCallWindowSetFocus;
        ShowFMessages(0);

      end;

    {
        WM_CTLCOLORBTN:
          begin
            Result := DrawEdit(lParam, wParam);
            if Result <> 0 then Exit;
          end;
    }

//    WM_CTLCOLORLISTBOX:
//      begin
//        Result := tr4wBrushArray[trBtnFace];
//        Exit;
//      end;

//    WM_CTLCOLOREDIT:
//      begin
//        if HWND(lParam) = ExchangeWindowHandle then
//          if OpMode = SearchAndPounceOpMode then
//          begin
//            SetBkColor(HDC(wParam), tr4wColorsArray[trGreen{ColorColors.ExchangeSAndPWindowBackground}]);
//            Result := tr4wBrushArray[trGreen{ColorColors.ExchangeSAndPWindowBackground}];
//            Exit;
//          end;

//        if HWND(lParam) = wh[mweCall] then
//        begin
//          SetTextColor(HDC(wParam), tr4wColorsArray[ColorColors.CallWindowColor]);
//          SetBkColor(HDC(wParam), tr4wColorsArray[ColorColors.CallWindowBackground]);
//          Result := tr4wBrushArray[ColorColors.CallWindowBackground];
//          Exit;
//        end;

//      end;

    WM_CTLCOLORLISTBOX, WM_CTLCOLOREDIT, WM_CTLCOLORSTATIC:
      begin
{
        if HWND(lParam) = wh[mweExchange] then
        begin
          if OpMode = SearchAndPounceOpMode then
          begin
            SetBkColor(HDC(wParam), tr4wColorsArray[trGreen]);
            Result := tr4wBrushArray[trGreen];
            Exit;
          end
          else goto CallDefWindowProc;
        end;
}
        Result := DrawWindows(lParam, wParam);
        if Result <> 0 then Exit;
      end;

    {
        WM_CTLCOLORBTN:
          begin
            SetBkMode(HDC(wParam), TRANSPARENT);
            SetTextColor(HDC(wParam), clBlue);

            RESULT := WhiteBrush;
            exit;

    //        textout(hdc(wparam), 10, 10, '222', 3);
    //      windows.Beep(1000,10);
    //        result:=YellowBrush;
    //        exit;
          end;
    }
    {
        WM_CTLCOLOREDIT:
          begin
            Result := DrawEdit(lParam, wParam);
            if Result <> 0 then Exit;
          end;
    }

    {    WM_CTLCOLORLISTBOX,
          WM_CTLCOLORSTATIC,
          WM_CTLCOLOREDIT:
          begin
            Result := DrawEdit(lParam, wParam);
            if Result <> 0 then Exit;
          end;
    }

    WM_CLOSE:
      begin
        GoToExit:
        ExitProgram(True);
        Msg := 0;
      end;

    WM_COMMAND:
      begin
        case wParam of
          66:
            begin
              EditableLogWindowDblClick;
            end;
        end;
{$IF tDebugMode}
        if HiWord(wParam) = BN_CLICKED then
        begin
          if lParam = integer(CPUButtonHandle) then CPUButtonProc;
          FrmSetFocus;
        end;
{$IFEND}

        if (LoWord(wParam) >= 10000) and (LoWord(wParam) <= 10700) then
        ProcessMenu(wParam);
        if (LoWord(wParam) >= 10700) and (LoWord(wParam) <= 10750) then
          RunPlugin(LoWord(wParam));

        if lParam = integer(wh[mweCall]) then
        begin
          if HiWord(wParam) = EN_KILLFOCUS then
          begin
//            tr4w_CallWindowActive := False;
            if tr4w_CustomCaret then DestroyCaret;
            CheckQuestionMark;
          end;
          if HiWord(wParam) = EN_UPDATE {EN_CHANGE} then CallWindowChange;

          if HiWord(wParam) = EN_SETFOCUS then
          begin
//            tr4w_CallWindowActive := True;
            ActiveMainWindow := awCallWindow;
            ChangeCaret(wh[mweCall]);
{$IF MORSERUNNER}
//            Windows.SendMessage(MorseRunner_Callsign, WM_SETFOCUS, 0, 0);
{$IFEND}
          end;
        end;

        if lParam = integer(wh[mweExchange]) then
        begin
          if HiWord(wParam) = EN_KILLFOCUS then
          begin
//            tr4w_ExchangeWindowActive := False;
            if tr4w_CustomCaret then DestroyCaret;
          end;
          if HiWord(wParam) = EN_CHANGE then ExchangeWindowChange;
          if HiWord(wParam) = EN_SETFOCUS then
          begin
//            tr4w_ExchangeWindowActive := True;
            ActiveMainWindow := awExchangeWindow;
            ChangeCaret(wh[mweExchange]);
{$IF MORSERUNNER}
//            Windows.SendMessage(MorseRunner_nUMBER, WM_SETFOCUS, 0, 0);
{$IFEND}
          end;
        end;

      end;

  end; {of case}

{$IF MMTTYMODE}
  if Msg = MMTTY.mmttyMSG then mmttyProcessMessage(wParam, lParam);
{$IFEND}

  CallDefWindowProc:
  Result := longword(DefWindowProc(TRHWND, Msg, wParam, lParam));
end;

label
  NoTransMess, TransMess, CommandLine;
var

  TempHDC                               : HDC;
  TempColor                             : tr4wColors;
  TempTLogBrush                         : TLogBrush {= (lbStyle: BS_SOLID; lbHatch: 0)};
  c                                     : Cardinal;
  TempString                            : ShortString;
     P                                   : Pchar; //n4af
      P1                                   : boolean; //n4af
   S1                                   : String; //n4af
{$IF not tDebugMode}
  s                                     : string;
{$IFEND}
  logBuffer                             : string;
begin

  tMutex := CreateMutex(nil, False, tr4w_ClassName);
  if tMutex = 0 then
  begin
    Exit;
  end;
  if GetLastError = ERROR_ALREADY_EXISTS then
  begin
    asm
    push eax
    call ShowSyserror
    end;
    Exit;
  end;

//{$IF LANG = 'ENG'}
//  if TryToCheckTheLatestVersion then Exit;
//{$IFEND}

  TR4W_PATH_NAME[Windows.GetCurrentDirectory(SizeOf(TR4W_PATH_NAME), @TR4W_PATH_NAME)] := '\';

 Format(TR4W_INI_FILENAME, '%ssettings\tr4w.ini', TR4W_PATH_NAME);
 // Format(TempBuffer, '%s%s', tempstring, 'tr4w.ini');
  LuconSZLoadded := AddFontResource(TR4W_LC_FILENAME) <> 0;
  MainFixedFont := tCreateFont(15, FW_BOLD * Ord(BoldFont), @MainFontName[1]);
  MSSansSerifFont := tCreateFont(15, FW_DONTCARE, 'MS Sans Serif');

  CreateDirectoryIfNotExist;

{$IF tDebugMode}
  //uHistory.MakeRevisionHistory;
  TR4W_CFG_FILENAME := 'c:\TR4W\debug.cfg';
{$ELSE}

  s := ParamStr(1);
  if s <> '' then
  begin
    Windows.CopyMemory(@TR4W_CFG_FILENAME, @s[1], length(s));
    goto CommandLine;
  end;

  begin
//    tDialogBox(43, @NewContestDlgProc);
    CreateModalDialog(305, 235, tr4whandle, @NewContestDlgProc, 0);
    if TR4W_CFG_FILENAME[0] = '_' then Exit;
  end;
{$IFEND}

  CommandLine:

 

  InitializeStrings;

  for TempColor := Low(tr4wColors) to High(tr4wColors) do
  begin
    TempTLogBrush.lbColor := tr4wColorsArray[TempColor];
    tr4wBrushArray[TempColor] := CreateBrushIndirect(TempTLogBrush);
  end;

  tr4w_osverinfo.dwOSVersionInfoSize := SizeOf(OSVERSIONINFO);
  Windows.GetVersionEx(tr4w_osverinfo);

  WindowsOSversion := tr4w_osverinfo.dwPlatformId;

  Windows.SystemParametersInfo(SPI_GETWORKAREA, 0, @tWorkingAreaRect, 0);
  TempHDC := Windows.GetWindowDC(tr4whandle);

  tEightBitsPerPixel := Windows.GetDeviceCaps(TempHDC, BITSPIXEL) <= 8;
  ReleaseDC(tr4whandle, TempHDC);

  SetUpFileNames;

  RenameCommands;


  LoadTR4WPOSFILE;

 
  if not ctyLoadInCountryFile(TR4W_CTY_FILENAME, False, True) then
  begin
    UnableToFindFileMessage(TR4W_CTY_FILENAME);
    halt;
  end;

  SetConfigurationDefaultValues;

  {Temporary - Feb 2010}


  ReadInConfigFile(cfgINI);

  ReadInConfigFile(cfgCFG);          //n4af 4.31.5
  ReadInConfigFile(cfgCommMes);      //common messages gets precedence - n4af

  if CTY.CtyRFOblMode then       // n4af 4.42.6
     ctyLoadInRFOblList;
  
  

  if CTY.ctyR150SMode then
  begin
    ctyLoadInR150SList;
    TempString := 'MY CALL';
    CheckCommand(@TempString, MyCall);
  end;

{$IF SCPDEBUG}
  scpLoadInDateBase('trmaster.dta');
{$IFEND}

  mo.FillVisibleBytes;
  ws := ws + 12;

  tSetupExchangeNumbers;

  if (HFBandEnable = False) and (VHFBandsEnabled = True) then
  begin
  ActiveBand := Band6;
  BandMapDisplayGhz := True;    // n4af 4.42.8
  end;
  if HFBandEnable then  BandMapDisplayGhz := False;    // n4af 4.42.8
  SetWindowSize;
  CreateFonts;

  with tr4w_WinClass do
  begin
    HICON := LoadIcon(SysInit.hInstance, MAKEINTRESOURCE('MAINICON'));
    lpfnWndProc := @WindowProc;
    hInstance := SysInit.hInstance;
    HCURSOR := LoadCursor(0, IDC_ARROW);
    hbrBackground := tr4wBrushArray[TWindows[mweWholeScreen].mweBackG {trBtnFace}];
  end;

  //tr4w_main_menu := LoadMenu(hInstance, 'T');
  tr4w_main_menu := CreateTR4WMenu(@T_MENU_ARRAY, T_MENU_ARRAY_SIZE, False);

{$IFDEF AUTOSPOT}
   ShowMessage('AUTOSPOT is enabled - Test Mode Only');
{$ENDIF}
  tr4w_accelerators := LoadAccelerators(hInstance, 'T');
  RegisterClass(tr4w_WinClass);

  CursorBitmap := LoadImage(hInstance, 'cursor.bmp', IMAGE_BITMAP, ws2 * 3, ws + 2, LR_LOADFROMFILE);

  SetUpExchangeInformation(ActiveExchange, ExchangeInformation);
  SetColumnsWidth;
  CreateMainWindow;
  CreateMultsWindows;
  CreateQSONeedWindows;

  SetUpGlobalsAndInitialize;
  if SayHiEnable then DisplayNamePercentage;
  SetStereoPin(StereoControlPin, StereoPinState);
  DisplayRadio(ActiveRadio);
  DisplayBandMode(ActiveBand, ActiveMode, False);
  tDispalyOnAirTime;
  tDisplayCQTotal;
  ClearContestExchange(ReceivedData);
  SetUpToSendOnActiveRadio;

  UpdateTimeAndRateDisplays(True, True);
  SystemTimeChanging;
  DisplayRate(0);
  tDispalyMyComputerID;
  SetMainWindowText(mweCurrentOperator, CurrentOperator);

//  WSAStartup($0202, PWSAData(@wsprintfBuffer)^);
//  InitCommonControls();

//  TR4WDriver := TDriverConnection.Create;
  ntBeepInit;
  OpenOtherWindows;

  tLoadKeyboardLayout;

  tCallWindowSetFocus;

  LoadInPlugins;

  asm
  mov  ebx,0
  push ebx
  push ebx
  push ebx
  push ebx
  call CreateEvent
  mov  [tCW_Event],eax

  sub  esp,16
  call CreateEvent
  mov  [tCWPaddle_Event],eax

  sub  esp,16
  call CreateEvent
  mov  [tDVP_Event],eax

  sub  esp,16
  call CreateEvent
  mov  [tNet_Event],eax
  end;

  if not tHandLogMode then
  begin
    SetTimer(tr4whandle, ONE_SECOND_TIMER_HANDLE, 1000, @OneSecTimerProc);
    for c := menu_alt_increment_time_1 to menu_alt_increment_time_0 do EnableMenuItem(tr4w_main_menu, c, MF_GRAYED + MF_BYCOMMAND);
  end
  else
  begin
    showwarning('HAND LOG MODE = TRUE');
  end;

//  wkLoadSettings;
  tCreateThread(@wkOpen, wkThreadID);

{$IF MIXWMODE}
  tEnableMenuItem(menu_windows_mmtty, MF_ENABLED);
{$IFEND}

  CD.MasterFileExists := FileExists(CD.ActiveFilename);

  if not CD.MasterFileExists then
  begin
    Format(QuickDisplayBuffer, 'TRMASTER.DTA : %s', SysErrorMessage(GetLastError));
    QuickDisplay(QuickDisplayBuffer);
  end;

{$IF not tDebugMode}
  Windows.CopyMemory(@TR4W_LATESTCFG_FILENAME, @TR4W_CFG_FILENAME, SizeOf(FileNameType));
//  Windows.CharLower(TR4W_LATESTCFG_FILENAME);
  Windows.WritePrivateProfileString(_COMMANDS, LATEST_CONFIG_FILE, TR4W_LATESTCFG_FILENAME, TR4W_INI_FILENAME);
{$IFEND}

  if CPUKeyer.SerialPortDebug then
    ShowMessage('Command SERIAL PORT DEBUG is no longer supported.'#13#10'Use instead Portmon program:'#13#10'http://technet.microsoft.com/sysinternals/bb896644.aspx');

  if MyGrid = '' then
    SetCommand('MY GRID');

//  Format(wsprintfBuffer, 'cty.dat: "%s" version', CTY.ctyTable[cty.ctyVersion].Name);
//  SetMainWindowText(mweBeamHeading, wsprintfBuffer);

{$IF tKeyerDebug}
//  CreateModalDialog(150, 90, tr4whandle, @KeyerDebugDlgProc, 0);
//  CreateDialog(hInstance, MAKEINTRESOURCE(72), 0, @KeyerDebugDlgProc);
  CreateDialogIndirectParam(hInstance, PDlgTemplate(@MAINTR4WDLGTEMPLATE)^, tr4whandle, @KeyerDebugDlgProc, 0);
  FrmSetFocus;

{$IFEND}

{$IF MORSERUNNER}
  GetMorseRunnerWindow;
{$IFEND}

    {****************************  Main CallBack  ****************************}

  while (GetMessage(Msg, 0, 0, 0)) do
  begin

    if TranslateAccelerator(tr4whandle, tr4w_accelerators, Msg) <> 0 then
    begin
      asm nop end;
      goto NoTransMess;
    end;
    case Msg.Message of

      WM_CHAR:
        begin
          if (Char(Msg.wParam) = QuickQSLKey1) or (Char(Msg.wParam) = QuickQSLKey2) then QuickQSLProcedure(Char(Msg.wParam));
          if (Msg.HWND = wh[mweCall]) or (Msg.HWND = wh[mweExchange]) then
          begin
            if (Msg.HWND = wh[mweCall]) then CallWindowKeyDownProc(Msg.wParam);
            if KeyboardCallsignChar(Msg.wParam, boolean(ActiveMainWindow) {tr4w_ExchangeWindowActive}) = False then goto NoTransMess;
          end;
        end;

      WM_SYSKEYDOWN, WM_KEYDOWN:
        begin

          if KeypadCWMemories then
            if Msg.wParam in [VK_NUMPAD0..VK_NUMPAD9] then
            begin
              if Msg.wParam <> VK_NUMPAD0 then
                ProcessFuntionKeys(Msg.wParam + 27)
              else
                ProcessFuntionKeys(Msg.wParam + 37);
              goto NoTransMess;
            end;

          if (Msg.HWND = wh[mweEditableLog]) and (Msg.wParam = VK_DOWN) then
            if ListView_GetNextItem(wh[mweEditableLog], LVNI_ALL, LVNI_SELECTED) = tLogIndex - 1 then
              tCallWindowSetFocus;

          if (Msg.HWND = wh[mweCall]) or (Msg.HWND = wh[mweExchange]) then
          begin
            if Msg.wParam in [VK_F1..vk_f12] then ProcessFuntionKeys(Msg.wParam);
            if Msg.wParam = VK_F4 then goto NoTransMess;
            if Msg.wParam > 40 then goto TransMess;
            if Msg.wParam = VK_RIGHT {39} then if Msg.HWND = wh[mweExchange] then TryPutSpaceinExchangeWindow;
            if Msg.wParam = VK_PRIOR {33} then ProcessMenu(menu_cwspeedup);
            if Msg.wParam = VK_NEXT {34} then ProcessMenu(menu_cwspeeddown);
            if Msg.wParam = VK_SPACE {32} then if Msg.HWND = wh[mweCall] then
              begin
                SpaceBarProc2;
                if ActiveRadioPtr^.CWByCAT then BackToInactiveRadioAfterQSO;
                goto NoTransMess;
              end;

            if (Msg.wParam = VK_UP) and (ActiveMainWindow = awCallWindow {tr4w_CallWindowActive}) and (CallWindowString = '') then if tLogIndex <> 0 then
                tAltE;

            if (Msg.wParam = VK_UP {38}) or (Msg.wParam = VK_DOWN {40}) then
            begin
              ProcessTAB(0);
              Msg.wParam := 0;
            end;
            if {18} Msg.wParam = VK_MENU then ShowFMessages(24);
            if {17} Msg.wParam = VK_CONTROL then
            begin
              ShowFMessages(12);
{
              if TuneWithDits then
                if (Msg.lParam and (1 shl 30)) <> 0 then
                begin
                  Windows.SetWindowText(InsertWindowHandle, inttopchar(GetAsyncKeyState(VK_LSHIFT)));
                  begin
                    SendStringAndStop('E');
                  end;

                end;
}
            end;
            if Msg.wParam = VK_SHIFT {16} then
            begin

//              if Msg.lParam = 2752513 then SendStringAndStop('E');
              if ShiftKeyEnable then
              begin
                if lobyte(HiWord(Msg.lParam)) = 42 then if OpMode = CQOpMode then
                begin
                RITBumpDown; VFOBumpDown;
                end;
                if lobyte(HiWord(Msg.lParam)) = 54 then if OpMode = CQOpMode then
                begin
                RITBumpUp; VFOBumpUp;
                end;
              end;
            end;
          end;
        end;

      WM_KEYUP:
        begin
          if (Msg.wParam = VK_CONTROL) or (Msg.wParam = VK_MENU) then ShowFMessages(0);
          if Msg.wParam < 40 then goto TransMess;

          if Msg.HWND = wh[mweCall] then
          begin

            if Msg.wParam = 222 then
            begin
              if StartSendingNowKey = '''' then
                StartSendingNow(True);
              goto NoTransMess;
            end;

                //                CallWindowKeyDownProc(Msg.wParam);

          end;

          if Msg.HWND = BandMapListBox then
          begin
            if Msg.wParam = VK_DELETE then DeleteSpotFromBandmap;
{ $ I F  O L DCTRLJ}
            if Msg.wParam in [66, 77, 68, 80] then
            begin
              if Msg.wParam = 66 then InvertBoolean(BandMapAllBands);
              DisplayBandMap; //ProcessInput(BAB);
             if Msg.wParam = 77 then InvertBoolean(BandMapAllModes) ;
              DisplayBandMap; //ProcessInput(BAM);
              if Msg.wParam = 68 then InvertBoolean(BandMapDupeDisplay);
              DisplayBandMap; //ProcessInput(BDD);
            end;
{ $ I F END}
          end;
        end;

      WM_SYSKEYUP:
        begin
          if (Msg.wParam = VK_MENU) then
          begin
            ShowFMessages(0);
            //if Cardinal(Msg.lParam) and 16777216 = 0 then goto NoTransMess;
          end;
          if Msg.wParam = VK_F10 then goto NoTransMess;
        end;

      WM_MOUSEMOVE:
        begin
//          SendMessage(hwndTT, TTM_RELAYEVENT, 0, integer(@Msg));
        end;

      WM_RBUTTONDBLCLK:
        begin
          GetButtonByRDblClick(Msg.HWND);
        end;
{
      WM_RBUTTONDOWN:
        begin
          if Msg.HWND = wh[mweBandMode] then ProcessMenu(75857);
          if Msg.HWND = CodeSpeedWindowHandle then ProcessMenu(76039);
        end;

      WM_LBUTTONDOWN:
        begin
          if Msg.HWND = wh[mweBandMode] then ProcessMenu(75858);
          if Msg.HWND = CodeSpeedWindowHandle then ProcessMenu(76040);
        end;

      WM_MBUTTONDOWN:
        if Msg.HWND = wh[mweBandMode] then ProcessMenu(75859);

      WM_LBUTTONDBLCLK:
        begin
          if (Msg.HWND = wh[mweClock]) or (Msg.HWND = wh[mweDate]) then ProcessMenu(75851);
          if (Msg.HWND = PaddleWindowHandle) or (Msg.HWND = FootSwWindowHandle) then ProcessMenu(menu_lpt);

//          Windows.GetWindowText(Msg.HWND, @wsprintfBuffer, 100);
//          GetTextFace(windows.GetDC (Msg.HWND), 100, @wsprintfBuffer);
//          ShowMessage(wsprintfBuffer);

        end;
}
    end; //of case
    TransMess:
      //      inc(Tw);
    TranslateMessage(Msg);
    DispatchMessage(Msg);
    NoTransMess:
//  except sm end;
  end;

end.

