(* This code was originally posted to comp.lang.pascal by  *)
(* JNIMMER@AOL.COM. Thanks to Gert Jan de Nijs for passing *)
(* it on.                                                  *)

(* This isn't so simple, or very fast, but is understandable!  *)
(* BTW, I've only tested it in TP 6 but it should work for TP7 *)

PROGRAM GifV2;

{$X+}

USES Crt;

CONST
  True = -1;
  False = 0;

VAR
  VRam : array[0..199, 0..319] of byte absolute $A000:$0000;

  ByteBuffer : byte;
  Pwr : array[0..8] of integer;
  Prefix : array[0..4096] of integer;
  Suffix : array[0..4096] of integer;
  Outcode : array[0..1024] of integer;
  MaxCodes : array[0..12] of longint;
  Pwr2 : array[0..16] of longint;
  Pal : array[0..255, 0..2] of byte;
  Xstart, Xend : longint;

  BitsIn : integer;
  BlockLength, Num : integer;
  f : file of byte;
  x, y : integer;
  CodeMask : array[1..8] of integer;
  TChar : integer;
  jerinp : text;

PROCEDURE _PSet(x, y, c : integer);
BEGIN
  if (y >= 0) and (y < 200) then
    if (x >= 0) and (x < 320) then
      if (c >= 0) and (c < 256) then
        VRam[y,x] := c;
END;

PROCEDURE _ReadInt(var i : integer);
VAR a, b : byte;
BEGIN
  read(f, a);
  read(f, b);
  i := 256 * b + a;
END;

PROCEDURE _GrOn;
BEGIN
 asm
   mov ax, 0013h
   int 10h
  end;
END;

PROCEDURE _GrOff;
BEGIN
 asm
   mov ax, 0003h
   int 10h
  end;
END;

PROCEDURE _SetAllPal;
VAR
  segg, ofss : word;
BEGIN
  segg := seg(Pal);
  ofss := ofs(Pal);
  asm
    mov ax, $1012
    xor bx, bx
    mov cx, 255
    mov es, segg
    mov dx, ofss
    int $10;
  end;
END;

PROCEDURE _Beep;
BEGIN
  sound(440);
  delay(200);
  sound(880);
  delay(200);
  nosound;
END;

FUNCTION Gbit : integer;
BEGIN
  inc(Bitsin);
  if Bitsin = 9 then begin
      read(f, ByteBuffer);
      TChar := ByteBuffer;
      Bitsin := 1;
      inc(Num);
      if (Num = BlockLength) then begin
        BlockLength := TChar + 1;
        read(f, ByteBuffer);
        TChar := ByteBuffer;
        Num := 1;
      end;
  end;
  if (TChar AND Pwr[Bitsin]) = 0 then
    Gbit := 0
  else
    Gbit := 1;
END;

PROCEDURE Plot(A : integer);
var q, w, e : integer;
BEGIN
  _PSet(X, Y, A);
  inc(X);
  if (X > Xend) then begin
      X := Xstart;
      inc(Y);
  end;
END;

FUNCTION ReadCode (CodeSize : integer) : integer;
VAR
  aa : integer;
  Code : integer;
BEGIN
  Code := 0;
  for Aa := 0 TO (CodeSize - 1) do
    Code := Code + Gbit * Pwr2[Aa];

  ReadCode := Code;
END;

PROCEDURE MainP;
VAR
  FName : string;
  AStr : string;
  A : integer;
  TotalX, TotalY : integer;
  BitsPixel : integer;
  Background : integer;
  jer1, jer2 : integer;
  Red, Green, Blue : integer;
  xLength : integer;
  yStart, yLength,yEnd : integer;
  CodeSize,ClearCode,EOFCode,FirstFree,FreeCode,
  InitCodeSize,Maxcode,Bitmask : integer;
  OutCount : integer;
  Code : integer;
  CurCode, OldCode : integer;
  FinChar : integer;
  InCode : integer;
  i : integer;
BEGIN
  ClrScr;
  Pwr[1] := 1; Pwr[2] := 2; Pwr[3] := 4; Pwr[4] := 8; Pwr[5] := 16;
  Pwr[6] := 32; Pwr[7] := 64; Pwr[8] := 128;

  MaxCodes[0] := 4; MaxCodes[1] := 8; MaxCodes[2] := 16; MaxCodes[3] :=
20;
  MaxCodes[4] := $40; MaxCodes[5] := $80; MaxCodes[6] := $100;
  MaxCodes[7] := $200; MaxCodes[8] := $400; MaxCodes[9] := $800;
  MaxCodes[10]:= $1000; MaxCodes[11]:= 8192;

  CodeMask[1] := 1; CodeMask[2] := 3; CodeMask[3] := 7; CodeMask[4] := 15;
  CodeMask[5] := 31; CodeMask[6] := 63; CodeMask[7] := 127;
  CodeMask[8] := 255;

  Pwr2[0] := 1; Pwr2[1] := 2; Pwr2[2] := 4; Pwr2[3] := 8; Pwr2[4] := 16;
  Pwr2[5] := 32; Pwr2[6] := 64; Pwr2[7] := 128; Pwr2[8] := 256;
  Pwr2[9] := 512; Pwr2[10]:= 1024; Pwr2[11]:= 2048; Pwr2[12]:= 4096;
  Pwr2[13]:= 8192; Pwr2[14]:= 16384;

  TextColor(9);
  TextColor(14);
  writeln;
  writeln('Include full path if not in current directory');
  write('Enter a filename ');
  TextColor(7);
  TextBackground(0);
  readln(FName);

  if FName = '' then Exit;
  if Pos('.', FName) = 0 THEN
    FName := concat(FName, '.GIF');

  assign(f, FName);
  reset(f);
  AStr := '';
  for x := 1 to 6 do begin
    read(f, ByteBuffer);
    AStr := concat(AStr, chr(ByteBuffer));
  end;

  if (AStr <> 'GIF87a') then begin
    writeln('Warning, the ',AStr, ' protocol is being used.');
    write('Proceed anyway(Y/N)?');
    readln(AStr);
    if UpCase(AStr[1]) <> 'Y' then Exit;
  end;

  _ReadInt(TotalX);
  _ReadInt(TotalY);
  read(f, ByteBuffer);
  BitsPixel := (ByteBuffer AND 7) + 1;

  read(f, ByteBuffer);
  Background := ByteBuffer;
  read(f, ByteBuffer);
  if ByteBuffer <> 0 then begin
    writeln('Bad file.');
    exit;
  end;

  jer2 := 1;
  for jer1 := 1 to BitsPixel do
    jer2 := jer2 * 2;

  for a := 0 to jer2 - 1 do begin
    read(f, ByteBuffer);
    Red := ByteBuffer;
    read(f, ByteBuffer);
    Green := ByteBuffer;
    read(f, ByteBuffer);
    Blue := ByteBuffer;
    Pal[A, 0] := (Red DIV 4);
    Pal[A, 1] := (Green DIV 4);
    Pal[A, 2] := (Blue DIV 4);
  end;

  read(f, ByteBuffer);
  if (chr(ByteBuffer) <> ',') then begin
    writeln('Bad file.');
    exit;
  end;

  _ReadInt(Jer1);
  xStart := Jer1;
  _ReadInt(Ystart);
  _ReadInt(Xlength);
  _ReadInt(Ylength);
  Xend := Xlength + Xstart - 1;
  Yend := Ylength + Ystart - 1;

  read(f, ByteBuffer);
  a := ByteBuffer;
  if (A AND 128) = 128 then begin
    writeln('Local colormap encountered.');
    exit;
  end else
    if (A AND 64) = 64 then begin
      writeln('Image is interlaced!');
      exit;
    end;

  read(f, ByteBuffer);
  CodeSize := ByteBuffer;
  ClearCode := Pwr2[CodeSize];
  EOFCode := ClearCode + 1;
  FirstFree := ClearCode + 2;
  FreeCode := FirstFree;
  CodeSize := CodeSize + 1;
  InitCodeSize := CodeSize;
  Maxcode := MaxCodes[CodeSize - 2];
  Bitmask := CodeMask[BitsPixel];

  read(f, ByteBuffer);
  BlockLength := ByteBuffer + 1;
  Bitsin := 8;
  OutCount := 0;
  X := Xstart;
  Y := Ystart;

  _GrOn;

  fillchar(VRam, sizeof(VRam), Background);

  _SetAllPal;

  repeat
    Code := ReadCode(CodeSize);
    if (Code <> EOFCode) then
      begin
        if (Code = ClearCode) then
          begin
            CodeSize := InitCodeSize;
            Maxcode := MaxCodes[CodeSize - 2];
            FreeCode := FirstFree;
            Code := ReadCode(CodeSize);
            CurCode := Code;
            OldCode := Code;
            FinChar := (Code AND Bitmask);
            Plot(FinChar);
          end
        else
          begin
            CurCode := Code;
            InCode := Code;
            if (Code >= FreeCode) then
              begin
                CurCode := OldCode;
                Outcode[OutCount] := FinChar;
                inc(OutCount);
              end;
            if (CurCode > Bitmask) then
              repeat
                Outcode[OutCount] := Suffix[CurCode];
                inc(OutCount);
                CurCode := Prefix[CurCode];
              until (CurCode <= Bitmask);
            FinChar := (CurCode AND Bitmask);
            Outcode[OutCount] := FinChar;
            inc(OutCount);
            for i := (OutCount - 1) downto 0 do
              Plot(Outcode[i]);

            OutCount := 0;
            Prefix[FreeCode] := OldCode;
            Suffix[FreeCode] := FinChar;
            OldCode := InCode;
            inc(FreeCode);
            if (FreeCode >= Maxcode) then
              if (CodeSize < 12) then
                begin
                  inc(CodeSize);
                  Maxcode := Maxcode * 2;
                end;
          end;
      end;
  until (Code = EOFCode) or keypressed;

  _Beep;

  readkey;

  _GrOff;
END;


BEGIN
  Num := 0;
  MainP;
END.

(*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~ Gert Jan de Nijs                         Tel ++31.50.633600 (KVI)           ~
~ Kernfysisch Versneller Instituut (KVI)               633592 (Atomic Physics)~
~ Zernikelaan 25                                       633616 (Office)        ~
~ 9747 AA Groningen, The Netherlands       Fax ++31.50.634003                 ~
~                                          E-mail denijs@kvi.nl               ~
~                                                                             ~
~ VISIT THE World Wide Web ATOMIC PHYSICS HOMEPAGE                            ~
~ http://kviexp.kvi.nl/disk$1/atoompc/www_serv/homepage.html                  ~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*)
