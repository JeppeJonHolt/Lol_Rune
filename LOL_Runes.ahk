!1::
{
    InputBox, name, champ name
    Run C:\Users\jeppe\Desktop\RuneSelector\LOLRunecrawler.exe "%name%"
    Sleep, 2000
    MR := GetOptionRune("mainrune")
    KY := GetOptionRune("KeyStone")
    FSR := GetOptionRune("First secondary rune")
    SSR := GetOptionRune("Secound secondary rune")
    TSR := GetOptionRune("third secondary rune")
    SMR := GetOptionRune("Secound Main Rune")
    FSeR := GetOptionRune("first Sec Rune")
    SSeR := GetOptionRune("Secound Sec Rune")
    TSeR := GetOptionRune("third Sec Rune")
    FW := GetOptionRune("first wiered")
    SW := GetOptionRune("Secound wiered")
    TW := GetOptionRune("third wiered")
    Sleep, 500
    ClickEdit()
    Sleep, 500
    ClickDelete()
    Sleep, 500
    ClickYes()
    Sleep, 500
    ClickNew()
    Sleep, 500
    SelectMain(MR)
    Sleep, 500
    SelectMainRune(KY)
    Sleep, 500
    SelectSecoundaryRunes(FSR,0)
    Sleep, 500
    SelectSecoundaryRunes(SSR,1)
    Sleep, 500
    SelectSecoundaryRunes(TSR,2)
    Sleep, 500
    SelectSecoudMainRune(SMR)
    Sleep, 500
    SelectSecoundarySecRunes(FSeR,0)
    Sleep, 500
    SelectSecoundarySecRunes(SSeR,1)
    Sleep, 500
    SelectspecialSecRunes(TSeR)
    Sleep, 500
    SelectWierdRune(FW,0)
    Sleep, 500
    SelectWierdRune(SW,1)
    Sleep, 500
    SelectWierdRune(TW,2)
}

ClickEdit() {
    Mousemove, 434, 674, 2
    click left
}

ClickDelete() {
    Mousemove, 610, 123, 2
    click left
}

ClickYes() {
    Mousemove, 610, 385, 2
    click left
}

ClickNew() {
    Mousemove, 574, 130, 2
    click left
}

ClickSave() {
    Mousemove, 510, 127, 2
    click left
}

SelectMain(x) {
    Mousemove, 212+(x*218), 130, 2
    Sleep, 100
    click left
}

SelectMainRune(x) {
    Mousemove, 250+(x*75), 330, 2
    click left
}

SelectSecoundaryRunes(x , y) {
    Mousemove, 257+(x*68), 430+(y*91), 2
    click left
}

SelectSecoudMainRune(x) {
    Mousemove, 570+(x*50), 213, 2
    click left
}

SelectSecoundarySecRunes(x , y) {
    if (x != "")
    Mousemove, 580+(x*68), 300+(y*76), 2
    click left
}

SelectspecialSecRunes(x) {
    if (x != "")
    Mousemove, 572+(x*50), 452, 2
    click left
}

SelectWierdRune(x,y) {
    Mousemove, 580+(x*70), 520+(y*40), 2
    click left
}

GetOptionRune(Path) {
Loop, read, Yorick.txt

{

IfInString, A_LoopReadLine, %Path%

mainrune := RegExMatch(A_LoopReadLine, "\d", m)
main := m
}
return main
}
