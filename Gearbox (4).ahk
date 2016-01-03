#Persistent
#SingleInstance force
#NoEnv
ListLines Off
menu, tray, Icon, C:\Users\michel\Documents\DropBox\Scripts\Scripts\Gear.ico,1,1
Menu, TRAY, Tip, Gearbox
menu, tray, NoStandard

SetTimer, CloseWinrarMessage, 200
SetTimer, Outlook
Return
#include C:\Users\michel\Documents\DropBox\Scripts\Scripts\KeyUp.ahk
; -------------------------------------SCRIPT----------------------------------------------
^#r::
Reload
^#e::
Exitapp
^!+p::
IfWinNotActive, ahk_class AcrobatSDIWindow, , WinActivate, ahk_class AcrobatSDIWindow, 
WinWaitActive, ahk_class AcrobatSDIWindow, 
Send, {CTRLDOWN}p{CTRLUP}
WinWait, Print, 
IfWinNotActive, Print, , WinActivate, Print, 
WinWaitActive, Print, 
send {enter}
Sleep, 100
WinWait, ahk_class AcrobatSDIWindow
IfWinNotActive, ahk_class AcrobatSDIWindow, , WinActivate, ahk_class AcrobatSDIWindow, 
WinWaitActive, ahk_class AcrobatSDIWindow, 
Send, {CTRLDOWN}w{CTRLUP}
return 

^+\::
Send, {TAB  5}{CTRLDOWN}{RIGHT  2}{SHIFTDOWN}{RIGHT}{SHIFTUP}{CTRLUP}{CTRLDOWN}v{CTRLUP}{TAB}{ENTER}
return 

/*
^+[::
PixelSearch, Pa, Pb, 530, 500, 1920, 1039, 0x53A753, 0, Fast
if errorlevel
	msgbox Geen kleur gevonden
else
	MouseClick, left ,  %Pa%,  %Pb%
return
*/
^+]::
send {enter}
PixelSearch, Paa, Pbb, 430, 400, 1920, 1039, 0x0000FF, 0, Fast
if errorlevel
	msgbox Geen kleur gevonden
else
	MouseClick, left ,  %Paa%,  %Pbb%
	sleep 500
	send {enter}
	sleep 500
	send {ctrldown}{pgup}{ctrlup}
sleep 200
	PixelSearch, Paaa, Pbbb, 430, 400, 1920, 1039, 0xFF00FF, 0, Fast
if errorlevel
	msgbox Geen kleur gevonden
else
	MouseClick, left ,  %Paaa%,  %Pbbb%
return 	


!F8::
run C:\Users\michel\Documents\DropBox\Scripts\Scripts\Stabi+.ahk
Return
#a::
Run T:\
Return 
#w::
Run G:\MUL DVB\Aanlever documenten
return
:*:ddd::
FormatTime, datumvandaag,, ShortDate
Send %datumvandaag%
Return
F1::
return
#1::
Send {F2}{end}{backspace}{enter}{down}
Return
#2::
Send {F2}{end}{backspace 2}{enter}{down}
Return
#3::
Send {F2}{end}{backspace 3}{enter}{down}
Return
#4::
Send {F2}{end}{backspace 4}{enter}{down}
Return
#5::
Send {F2}{end}{backspace 5}{enter}{down}
Return
#6::
Send {F2}{end}{backspace 6}{enter}{down}
Return
#7::
Send {F2}{end}{backspace 7}{enter}{down}
Return
#8::
Send {F2}{end}{backspace 8}{enter}{down}
Return
#9::
Send {F2}{end}{backspace 9}{enter}{down}
Return
!#1::
Send {F2}{home}{del}{tab}
Return
!#2::
Send {F2}{home}{del 2}{tab}
Return
!#3::
Send {F2}{home}{del 3}{tab}
Return
!#4::
Send {F2}{home}{del 4}{tab}
Return
!#5::
Send {F2}{home}{del 5}{tab}
Return
!#6::
Send {F2}{home}{del 6}{tab}
Return
!#7::
Send {F2}{home}{del 7}{tab}
Return
!#8::
Send {F2}{home}{del 8}{tab}
Return
!#9::
Send {F2}{home}{del 9}{tab}
Return
^F12::
run C:\Python27\python.exe
return
#INS::
send {F2}{home}{shiftdown}{right 30}{shiftup}
return
#space::
IfWinNotActive, Frontpage, , WinActivate, Frontpage,
IfWinNotActive, ahk_class rctrl_renwnd32, , WinActivate ahk_class rctrl_renwnd32
return
+capslock::
return
CapsLock::
^CapsLock::
^!CapsLock::
!CapsLock::
!+CapsLock::
^+CapsLock::
#CapsLock::
!#CapsLock::
^#CapsLock::
+#CapsLock::
^!+CapsLock::		
!+^#CapsLock::
^!#CapsLock::
^+#CapsLock::
!+#CapsLock::
Return
+F1::
run C:\Users\michel\Documents\Autocad Templates\EMPTY-TEST.dwg
return
!^F1::
run C:\Users\michel\Documents\Autocad Templates\EMPTY-TEST.dwg
Return
ScrollLock::
Process, close, acad.exe
Process, close, Senddmp.exe
Return
!DEL::
Process, close, AcHelp.exe
Process, close, AdExchange.exe
Return
#Q::
Run C:\Users\michel\Downloads
Return
#T::
run K:\Tekeningenbeheer
Return
#Y::
run J:\03 Lopend Project
return
#M::
run C:\Users\michel
Return
#G::
Run L:\Michel
Return
#b::
run C:\Users\michel\Desktop
return
#r::
Run calc
Return
^+X::
WinClose ahk_class AcrobatSDIWindow
Return
^1::
Send {F2}{home}{ctrldown}v{ctrlup}{enter}{down}
Return
^2::
Send {F2}{end}{ctrldown}v{ctrlup}{enter}{down}
Return
#del::
clipboard =
Clipsecond =
clipoldthird =
return
^PrintScreen::
Send {PRINTSCREEN}
sleep 500
run C:\Program Files\Paint.NET\PaintDotNet.exe
return
^F5::
Run C:\Program Files (x86)\Notepad++\notepad++
Return
!F12::
Run C:\Users\michel\Documents\DropBox\Scripts\Scripts\ShotcutMenu.ahk
Return
!F1::
Run C:\Program Files (x86)\AutoHotkey\AutoHotkey.chm
Return

#x::
begin:
Random, numbers, 0, 9999
lengthnum := StrLen(numbers)
while lengthnum < 4
{
	goto begin
}
msgbox %numbers%
return


/* #x::
WinWait, Microsoft Excel - Opdrachtenbon Repro - van de Kamp BV1, 
IfWinNotActive, Microsoft Excel - Opdrachtenbon Repro - van de Kamp BV1, , WinActivate, Microsoft Excel - Opdrachtenbon Repro - van de Kamp BV1, 
WinWaitActive, Microsoft Excel - Opdrachtenbon Repro - van de Kamp BV1, 
Send, {ALTDOWN}rlrr{ALTUP}{ENTER}
WinWait, Regels voor voorwaardelijke opmaak beheren, 
IfWinNotActive, Regels voor voorwaardelijke opmaak beheren, , WinActivate, Regels voor voorwaardelijke opmaak beheren, 
WinWaitActive, Regels voor voorwaardelijke opmaak beheren, 
MouseClick, left,  101,  123
Sleep, 100
MouseClick, left,  101,  123
Sleep, 100
WinWait, Opmaakregel bewerken, 
IfWinNotActive, Opmaakregel bewerken, , WinActivate, Opmaakregel bewerken, 
WinWaitActive, Opmaakregel bewerken, 
MouseClick, left,  48,  242
Sleep, 100
send {del}{del}
return
 */
#c::
clipold = %clipboard%
send {ctrldown}c{ctrlup}
Clipsecond = %clipboard%
clipboard = %clipold%
return

#v::
clipoldd = %clipboard%
clipboard = %Clipsecond%
send {ctrldown}v{ctrlup}
clipboard = %clipoldd%
return

^#c::
clipoldthird = %clipboard%
send ^c
Clipthird = %clipboard%
clipboard = %clipoldthird%
return
^#v::
clipboard = %Clipthird%
send ^v
clipboard = %clipoldthird%
return


/* !#c::
clipoldforth = %clipboard%
send ^c
Clipsecond = %clipboard%
clipboard = %clipold%
return
!#v::
clipboard = %Clipsecond%
send ^v
clipboard = %clipold%
return
 */
; -------------Hotstrings (autoreplace)-----------------------------
::nvt::n.v.t.
::.n.v.t.::n.v.t.
::nv.t.::n.v.t.
::nv.t::n.v.t.
::n.vt::n.v.t.
::n.vt.::n.v.t.
::tbv::t.b.v.
::t.bv::t.b.v.
::tb.v::t.b.v.
::tbv.::t.b.v.
::.tbv::t.b.v.
::nav::n.a.v.
::n.a.v::n.a.v.
::n.av::n.a.v.
::na.v::n.a.v.
::.nav.::n.a.v.
::tvv::t.v.v.
::ipv::i.p.v.
::ipv.::i.p.v.
::i.p.v::i.p.v.
::tav::t.a.v.
::ta.v::t.a.v.
::ta.v.::t.a.v.
::t.a.v::t.a.v.
::t.av::t.a.v.
::t.b.v::t.b.v.
::svp::s.v.p.
::s.v.p::s.v.p.
::dmv::d.m.v.
::aub::a.u.b.
::a.u.b::a.u.b.
::t.v.v.::t.v.v.
::t.v.v::t.v.v.
::n.a.v.::n.a.v.
::n.a.v.::n.a.v.
::ctl::ctrl
::crl::ctrl
::CV::c.v.
::ivm::i.v.m.
::mbt::m.b.t.
::zsm::z.s.m.
::i.v.m::i.v.m.
::dubellijns::dubbellijns
::dubbelijns::dubbellijns
::dubelijns::dubbellijns
::stappenpaln::stappenplan
::stapenplan::stappenplan
::Inprincipe::In principe
::inprincipe::in principe
::bestands grote::bestandsgrote
::hiddem::hidden
::hiden::hidden

:*?:isntallaties::installatie
:*?:instllaties::installatie
:*?:Boudeel::bouwdeel
:*?:Bouweel::bouwdeel
:*?:singalering::signalering
:*?:Princiepschema::Principeschema
:*?:geplaast::geplaatst
:*:speficaties::specificaties
:*:speficatie::specificatie
:*:speficiatie::specificatie
:*:dubellijns::dubbellijns
:*:dubbelijns::dubbellijns
:*:dubelijns::dubbellijns
:*:hartliljn::hartlijn
:*?:Wizjiging::wijziging
:*?:Wiziging::wijziging
:*?:Wijzing::wijziging
:*?:Wijzigign::wijziging
:*?:anlyse::analyse
:*?:anelyse::analyse
:*?:anaalyse::analyse
:*?:alsjebliefd::alsjeblieft
:*?:Alsjebliefd::Alsjeblieft
:*?:analayse::analyse
:*:mvg::Met vriendelijke groet,{enter}Dhr. M. Zaal (Michel){enter}Tekeningenbeheerder{enter 3}
:C1*:FLO_::FLO-
:C1*:SZR_::SZR-
:C1*:VOH_::VOH-
:C1*:DPC_::DPC-
:C1*:<br>::<br />
:C1*:<BR>::<br />
:C1*:<B>::<b>
:C1*:</B>::</b>
:C1*:<P>::<p>
:C1*:</P>::</p>
:C1*:<HTML>::<html>
:C1*:</HTML>::</html>
:C1*:<HEAD>::<head>
:C1*:</HEAD>::</head>
:C1*:<H1>::<h1>
:C1*:</H1>::</h1>
:C1*:<H2>::<h2>
:C1*:</H2>::</h2>
:C1*:<H3>::<h3>
:C1*:</H3>::</h3>
:C1*:<H4>::<h4>
:C1*:</H4>::</h4>
:C1*:<H5>::<h5>
:C1*:</H5>::</h5>
:C1*:<H6>::<h6>
:C1*:</H6>::</h6>
:C1*:<TR>::<tr>
:C1*:<HR>::<hr />
:C1*:<hr>::<hr />
:C1*:</TR>::</tr>
:C1*:<TD>::<td>
:C1*:</TD>::</td>
:C1*:<TABLE>::<table>
:C1*:</TABLE>::</table>
:C0*?0:singalering::signalering
:C1*:ADG_::ADG-
:C1*:CMMS_::CMMS-
:C1*:MTL_::MTL-
:C1*:DKD_::DKD-
:C1*:DST_::DST-
:C1*:GBK_::GBK-
:C1*:GHS_::GHS-
:C1*:HHG_::HHG-
:C1*:JFR_::JFR-
:C1*:LVV_::LVV-
:C1*:LRS_::LRS-
:C1*:LVS_::LVS-
:C1*:LHF_::LHF-
:C1*:MHV_::MHV-
:C1*:MRP_::MRP-
:C1*:MRR_::MRR-
:C1*:OSD_::OSD-
:C1*:ODB_::ODB-
:C1*:SPT_::SPT-
:C1*:HHS_::HHS-
:C1*:UTZ_::UTZ-
:C1*:VBL_::VBL-
:C1*:VBH_::VBH-
:C1*:WKB_::WKB-
:C1*:WHF_::WHF-
:C1*:WBL_::WBL-
:C1*:STV_::STV-
:C1*:STV(K)_::STV(K)-
:C1*:STV(Z)_::STV(Z)-
:C1*:RND_::RND-
:*:[p]::
winactivate, ahk_class AfxMDIFrame90u
winwait, ahk_class AfxMDIFrame90u
send _model{space}
Send loadstb{space}
Send (load "pastetitleblock"){enter}
sleep 100
Send 321{ENTER}
WinWait, Tekeningsetup, Specificeren &invoeg
IfWinNotActive, Tekeningsetup, Specificeren &invoeg, WinActivate, Tekeningsetup, Specificeren &invoeg
WinWaitActive, Tekeningsetup, Specificeren &invoeg
Send, {TAB}{SPACE}{altdown}i{altup}{ENTER}
Return
Return

; WINDOWS KEY + Y TOGGLES FILE EXTENSIONS

#F1::
RegRead, HiddenFiles, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt
If HiddenFiles = 1 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 0
Else 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 1
send, {F5}
Return



#IfWinActive ahk_class #32770
:*:1-100::1:100
:*:1-50::1:50
:*:1-200::1:200
:*:1-20::1:20
Return
#p::
WinWait, Print, 
IfWinNotActive, Print, , WinActivate, Print, 
WinWaitActive, Print, 
Send, {ALTDOWN}{ALTUP}pp{ALTDOWN}p{ALTUP}
WinWait, Eigenschappen van Printer, 
IfWinNotActive, Eigenschappen van Printer, , WinActivate, Eigenschappen van Printer, 
WinWaitActive, Eigenschappen van Printer, 
Send, {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{SPACE}{DOWN}{DOWN}{ENTER}{ENTER}
WinWait, Print, 
IfWinNotActive, Print, , WinActivate, Print, 
WinWaitActive, Print, 
return
exit
#IfWinActive ahk_class rctrl_renwnd32
^!n::
Run C:\Users\michel\AppData\Roaming\Microsoft\Sjablonen\Standaard Mailopmaak Florence.oft
Return
^+A::
run C:\Users\michel\AppData\Roaming\Microsoft\Sjablonen\std mail andre lijsen.oft
Return
^N::
run C:\Users\michel\AppData\Roaming\Microsoft\Sjablonen\Formeel.oft
Return
Return
:*C1:a0::A0
:*C1:a1::A1
:*C1:a2::A2
:*C1:a3::A3
:*C1:a4::A4
:*C1:z3::Z3
:*C1:3x4::3×4
:*C1:4x4::4×4
:*C1:5x4::5×4
::C0::asdfghjkLEEGlllkjhgfdsa::
Return
exit
#ifwinactive ahk_class CalcFrame
esc::WinClose ahk_class CalcFrame
Return
Return
exit
#Ifwinactive ahk_class AfxMDIFrame90u
:*:sled::
Send, sled{SPACE}
WinWait, Edit Drawing Scales,
IfWinNotActive, Edit Drawing Scales, , WinActivate, Edit Drawing Scales,
WinWaitActive, Edit Drawing Scales,
Send, {ALTDOWN}r{ALTUP}{ENTER}
Return
:*:00::0,0{space}
!HOME::
Send _MODEL
Send {enter}
Return
::ll::
Send (load "customcommands.lsp"){space}
sleep 50
Return
::ssd::
Send (load "SLC8.lsp"){space}
Send (load "selX.lsp"){space}
sleep 50
Send SLC8{space}
Send sxr{space}
Return
:*:rr::
:*:ee::
send sel{space}
return
Xbutton2::
Send {ctrldown}{PgUp}{ctrlup}
Return
Xbutton1::
Send {ctrldown}{PgDn}{ctrlup}
Return
#ifwinactive Plot
^p::
MouseClick, left,  307,  92
MouseClick, left,  300,  119
MouseClick, left,  375,  546
MouseClick, left,  592,  545
return 


#Ifwinactive ahk_class #32770
F3::
send {shiftdown}{tab 2}{shiftup}
return
::sdownload::C:\Users\michel\Downloads\{enter}
return
::stb::K:\Tekeningenbeheer\{enter}
Return
::sdpc::K:\Tekeningenbeheer\DPC\{enter}
Return
::sflo::K:\Tekeningenbeheer\FLO\{enter}
Return
::svoh::K:\Tekeningenbeheer\VOH\{enter}
Return
::sszr::K:\Tekeningenbeheer\SZR\{enter}
Return
::sdesk::C:\Users\michel\Desktop\{enter}
return
::sgd::L:\Michel{enter}
return

return
#Ifwinactive ahk_class AcrobatSDIWindow
^+e::
Send {altdown}dx{altup}
Return
^!t::
Send {altdown}dcr{altup}
Return
^!o::
Send {altdown}do{altup}
Return
^!R::
Send {altdown}dzo{altup}
Return
exit
#Ifwinactive ahk_class Photo_Lightweight_Viewer
esc::
WinClose ahk_class Photo_Lightweight_Viewer
Return
exit
#ifwinactive MUL Tekeningendatabase - Aanmelden - Google Chrome,
INS::
send {tab}
send m.zaal@mulbv.nl
send {tab}
send garfield85
send {tab 2}{enter}
return
exit
#ifwinactive MUL BV Digitaal Vastgoed Beheer
INS::
send {tab}
send m.zaal@mulbv.nl
send {tab}
send bi-gebh-lip-vovt
send {tab 2}{enter}
return
exit
#ifwinactive Frontpage - Google Chrome,
:*:a0::A0
:*:a1::A1
:*:a2::A2
:*:a3::A3
:*:a4::A4
:*:z3::Z3
:*:z4::Z4
:*:z5::Z5
:*:z6::Z6
:*:a0+::A0+
Return 
exit
#ifwinactive ahk_class XLMAIN
Xbutton2::
Send {ctrldown}{PgUp}{ctrlup}
Return
Xbutton1::
Send {ctrldown}{PgDn}{ctrlup}
Return
exit
#ifwinactive Copy and Past Window
esc::
Gui, destroy
Return
!d::
WinMinimize
Return
exit
#ifwinactive ahk_class CabinetWClass
F4::
WinClose ahk_class CabinetWClass
Return
exit
#IfWinActive ahk_class AutoHotkeyGUI
esc::
Gui, destroy
reload
exit
#ifwinactive ahk_class XLMAIN
^!h::
send {altdown}r
sleep 500
send o
sleep 500
send n{altup}
return
exit 
#ifwinactive ahk_class AcrobatSDIWindow
^!x::
send {altdown}ag{altup}
winwait ahk_class #32770
sleep 3000
MouseClick, left,  183, 341
MouseClick, left,  183, 341
return 
#ifwinactive Frontpage - Google Chrome, 
!+f::
IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome, 
WinWaitActive, Frontpage - Google Chrome, 
MouseClick, left,  630,  113
Sleep, 100
WinWait, Frontpage - Google Chrome, 
IfWinNotActive, Frontpage - Google Chrome, , WinActivate, Frontpage - Google Chrome, 
WinWaitActive, Frontpage - Google Chrome, 
MouseClick, left,  628,  291
Sleep, 100
return 
return
exit
#ifwinactive Microsoft Excel
^DEL::
Send, {ALTDOWN}rlws{ALTUP}
return
exit
!DEL::
send {altdown}rmss{altup}{enter}
return
exit
INS::
send {ctrldown}v{ctrlup}
return
exit 
!INS::
send {altdown}rmn{altup}
return
^q::
send {altdown}rfe{altup}
return
exit 

#ifwinactive ahk_class WinRarWindow
CloseWinrarMessage:
WinClose, Koop een WinRAR-licentie
return
exit

#ifwinactive Profiel kiezen
Outlook:
winwait Profiel kiezen
IfWinNotActive, Profiel kiezen, , WinActivate, Profiel kiezen, 
WinWaitActive, Profiel kiezen, 
send {enter}
return
exit




#ifwinactive ahk_class Chrome_WidgetWin_1
#include C:\Users\michel\Documents\DropBox\Scripts\Scripts\TB.ahk
exit 

#ifwinactive Warning: JavaScript Window - ECMAScript
:*C1:ADG::
send Adegeest{enter}FLO-ADG{enter}
return
:*C1:GLT::
send Gewoon Lekker Thuis{enter}FLO-GLT{enter}
return
:*C1:MTL::
send De Mantel{enter}FLO-MTL{enter}
return
:*C1:DST::
send Duinstede{enter}FLO-DST{enter}
return
:*C1:DKD::
send Dekkersduin{enter}FLO-DKD{enter}
return
:*C1:GHS::
send Guldenhuis{enter}FLO-GHS{enter}
return
:*C1:HHG::
send Houthaghe{enter}FLO-HHG{enter}
return
:*C1:HHS::
send 't Hoflantse Huis{enter}FLO-{enter}
return
:*C1:JFR::
send Jonker Frans{enter}FLO-{enter}
return
:*C1:LVS::
send Loevestein{enter}FLO-{enter}
return
:*C1:LVV::
send Laan van Vredenoord{enter}FLO-{enter}
return
:*C1:LHF::
send Loosduinse Hof{enter}FLO-{enter}
return
:*C1:LRS::
send Laurens Reaalstraat{enter}FLO-LRS{enter}
return
:*C1:MHV::
send Mariahoeve{enter}FLO-MHV{enter}
return
:*C1:MRR::
send Marterade{enter}FLO-MRR{enter}
return
:*C1:OSN::
send Oostduin{enter}FLO-OSN{enter}
return
:*C1:SPT::
send Schakelpunt{enter}FLO-SPT{enter}
return
:*C1:STV::
send Steenvoorde{enter}FLO-STV{enter}
return
:*C1:UTZ::
send Uitzicht{enter}FLO-UTZ{enter}
return
:*C1:VBL::
send Vinckenborghlaan{enter}FLO-VBL{enter}
return
:*C1:VBH::
send Vredenburch{enter}FLO-VBH{enter}
return
:*C1:WKB::
send Wenckenbach{enter}FLO-WKB{enter}
return
:*C1:WHF::
send Westhoff{enter}FLO-WHF{enter}
return
:*C1:WBL::
send Willem de Bijelaan{enter}FLO-WBL{enter}
return
:*C1:ODB::
send Over de Boogaard{enter}FLO-ODB{enter}
return
:*C1:MRP::
send Mariënpark{enter}FLO-MRP{enter}
return
:*C1:CHC::
send Corhertcentrum{enter}FLO-CHC{enter}
return
:*C1:DNH::
send Duinhaghe{enter}FLO-DNH{enter}
return
:*C1:WDC::
send Wijndealercentrum{enter}FLO-WDC{enter}
return
exit


