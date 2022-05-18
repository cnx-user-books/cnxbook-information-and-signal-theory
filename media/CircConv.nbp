(* Content-type: application/mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 7.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       145,          7]
NotebookDataLength[     33422,        680]
NotebookOptionsPosition[     16859,        382]
NotebookOutlinePosition[     33393,        678]
CellTagsIndexPosition[     33350,        675]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"signallist", "=", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"Piecewise", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"1", ",", 
             RowBox[{"0", "\[LessEqual]", "#", "<", "1"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", 
             RowBox[{"#", "\[GreaterEqual]", "1"}]}], "}"}]}], "}"}], "]"}], 
        "&"}], "\[Rule]", "\"\<impulse\>\""}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"Piecewise", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"1", ",", 
             RowBox[{"0", "\[LessEqual]", "#", "\[LessEqual]", "3"}]}], "}"}],
            ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", 
             RowBox[{"3", "<", "#", "\[LessEqual]", "9"}]}], "}"}]}], "}"}], 
         "]"}], "&"}], "\[Rule]", "\"\<box\>\""}], ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"Piecewise", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"1", ",", 
             RowBox[{"0", "\[LessEqual]", "#", "\[LessEqual]", "2"}]}], "}"}],
            ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", 
             RowBox[{"2", "<", "#", "\[LessEqual]", "5"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", 
             RowBox[{"5", "<", "#", "\[LessEqual]", "9"}]}], "}"}]}], "}"}], 
         "]"}], "&"}], "\[Rule]", "\"\<square\>\""}], ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"Piecewise", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Sin", "[", "#", "]"}], ",", " ", 
             RowBox[{"0", "\[LessEqual]", "#", "\[LessEqual]", "7"}]}], "}"}],
            ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", 
             RowBox[{"7", "<", "#", "\[LessEqual]", "9"}]}], "}"}]}], "}"}], 
         "]"}], "&"}], "\[Rule]", "\"\<sine\>\""}], ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"Piecewise", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"#", "^", "2"}], "/", "16"}], ",", " ", 
             RowBox[{"0", "\[LessEqual]", "#", "\[LessEqual]", "4"}]}], "}"}],
            ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", 
             RowBox[{"4", "<", "#", "\[LessEqual]", "9"}]}], "}"}]}], "}"}], 
         "]"}], "&"}], "\[Rule]", "\"\<exponential\>\""}]}], "}"}]}], 
   ";"}]}]], "Input",
 CellChangeTimes->{{3.48888603396875*^9, 3.488886078890625*^9}, {
  3.488886124453125*^9, 3.48888613728125*^9}, {3.48888619565625*^9, 
  3.48888625540625*^9}, {3.4888863199375*^9, 3.488886322203125*^9}, {
  3.48888659521875*^9, 3.488886740671875*^9}, {3.488886808859375*^9, 
  3.488886826109375*^9}, {3.488887003296875*^9, 3.488887060125*^9}, {
  3.488887355328125*^9, 3.488887372015625*^9}, {3.4888874829375*^9, 
  3.488887511109375*^9}, {3.488887786515625*^9, 3.488887797578125*^9}, {
  3.48888826709375*^9, 3.488888269203125*^9}, {3.488888337265625*^9, 
  3.488888341359375*^9}, {3.48888838171875*^9, 3.488888395546875*^9}, {
  3.488888686609375*^9, 3.488888694515625*^9}, {3.48888875365625*^9, 
  3.4888888221875*^9}, {3.48888952159375*^9, 3.488889540921875*^9}, {
  3.488889914734375*^9, 3.48888999421875*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"GraphicsColumn", "[", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"DiscretePlot", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"func1", "[", 
           RowBox[{"Mod", "[", 
            RowBox[{
             RowBox[{"n", "-", "m"}], ",", "10"}], "]"}], "]"}], ",", 
          RowBox[{"func2", "[", "m", "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"m", ",", "0", ",", "9"}], "}"}], ",", " ", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Directive", "[", 
            RowBox[{
             RowBox[{"PointSize", "[", "Large", "]"}], ",", 
             RowBox[{"Opacity", "[", ".9", "]"}]}], "]"}], ",", 
           RowBox[{"Directive", "[", 
            RowBox[{
             RowBox[{"PointSize", "[", "Large", "]"}], ",", 
             RowBox[{"Opacity", "[", "0.7", "]"}]}], "]"}]}], "}"}]}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<m\>\"", ",", "None"}], "}"}]}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"DiscretePlot", "[", 
       RowBox[{
        RowBox[{"Sum", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"func1", "[", 
            RowBox[{"n", "-", "m"}], "]"}], "*", 
           RowBox[{"func2", "[", "m", "]"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"m", ",", "0", ",", "9"}], "}"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"n", ",", "0", ",", "n"}], "}"}], " ", ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "0.1"}], ",", " ", "9.1"}], "}"}], ",", 
           "Automatic"}], "}"}]}], ",", "\[IndentingNewLine]", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Thick", ",", 
           RowBox[{"PointSize", "[", "Large", "]"}]}], "}"}]}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<m\>\"", ",", "None"}], "}"}]}]}], "]"}]}], "}"}], 
    "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "0", ",", "\"\<shift n\>\""}], "}"}], ",", "0", ",", 
     "9", ",", "1", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"func1", ",", " ", 
       RowBox[{
        RowBox[{"PDF", "[", 
         RowBox[{
          RowBox[{"NormalDistribution", "[", 
           RowBox[{"0", ",", "1"}], "]"}], ",", "#"}], "]"}], "&"}], ",", " ", 
       RowBox[{"Style", "[", 
        RowBox[{"\"\<signal 1\>\"", ",", " ", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "0", ",", "1"}], "]"}]}], "]"}]}], "}"}], ",", 
     " ", "signallist"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"func2", ",", " ", 
       RowBox[{
        RowBox[{"PDF", "[", 
         RowBox[{
          RowBox[{"NormalDistribution", "[", 
           RowBox[{"0", ",", "1"}], "]"}], ",", "#"}], "]"}], "&"}], ",", 
       RowBox[{"Style", "[", 
        RowBox[{"\"\<signal 2\>\"", ",", " ", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"1", ",", "0", ",", "0"}], "]"}]}], "]"}]}], "}"}], ",", 
     " ", "signallist"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"FrameLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<\>\"", ",", "\"\<\>\"", ",", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<Circular Convolution\>\"", ",", "Large"}], "]"}], ",", 
      "\"\<\>\""}], "}"}]}], ",", "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input",
 CellChangeTimes->{
  3.48881211234375*^9, {3.488819236671875*^9, 3.488819238140625*^9}, {
   3.488819647140625*^9, 3.488819647421875*^9}, {3.488820672796875*^9, 
   3.488820700765625*^9}, {3.48882101871875*^9, 3.488821023125*^9}, {
   3.488821124546875*^9, 3.48882112665625*^9}, {3.48882118609375*^9, 
   3.48882120965625*^9}, {3.4888214689375*^9, 3.488821498828125*^9}, {
   3.488821570890625*^9, 3.4888215713125*^9}, {3.488822487125*^9, 
   3.488822498984375*^9}, {3.48882309171875*^9, 3.488823115234375*^9}, {
   3.488823238484375*^9, 3.488823238875*^9}, {3.48882328759375*^9, 
   3.488823287921875*^9}, {3.488823494671875*^9, 3.48882360409375*^9}, {
   3.4888901118125*^9, 3.48889011240625*^9}, {3.488890912546875*^9, 
   3.48889093853125*^9}, {3.4888916874375*^9, 3.488891730140625*^9}, {
   3.48889238025*^9, 3.488892388359375*^9}, {3.48889318378125*^9, 
   3.488893183921875*^9}, {3.488895855078125*^9, 3.4888958553125*^9}, {
   3.488896736765625*^9, 3.488896736859375*^9}, {3.48889713065625*^9, 
   3.488897163515625*^9}, {3.48889731290625*^9, 3.48889732675*^9}, {
   3.48889736665625*^9, 3.48889737728125*^9}, 3.488898656984375*^9, {
   3.48889868703125*^9, 3.48889868746875*^9}, {3.488898821*^9, 
   3.488898821171875*^9}, {3.48890152375*^9, 3.48890161425*^9}, {
   3.4889017176875*^9, 3.488901722359375*^9}, {3.488902066078125*^9, 
   3.48890210878125*^9}, {3.488902168546875*^9, 3.48890217*^9}, {
   3.488902628828125*^9, 3.48890265346875*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`func1$$ = Piecewise[{{1, 0 <= # <= 2}, {-1, 
       Inequality[2, Less, #, LessEqual, 5]}, {0, 
       Inequality[5, Less, #, LessEqual, 9]}}]& , $CellContext`func2$$ = 
    Piecewise[{{1, 0 <= # <= 3}, {0, 
       Inequality[3, Less, #, LessEqual, 9]}}]& , $CellContext`n$$ = 4, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 0, "shift n"}, 0, 9, 1}, {{
       Hold[$CellContext`func1$$], PDF[
        NormalDistribution[0, 1], #]& , 
       Style["signal 1", 
        RGBColor[0, 0, 1]]}, {(Piecewise[{{1, 
           Inequality[0, LessEqual, #, Less, 1]}, {0, # >= 1}}]& ) -> 
       "impulse", (Piecewise[{{1, 0 <= # <= 3}, {0, 
           Inequality[3, Less, #, LessEqual, 9]}}]& ) -> 
       "box", (Piecewise[{{1, 0 <= # <= 2}, {-1, 
           Inequality[2, Less, #, LessEqual, 5]}, {0, 
           Inequality[5, Less, #, LessEqual, 9]}}]& ) -> 
       "square", (Piecewise[{{
           Sin[#], 0 <= # <= 7}, {0, 
           Inequality[7, Less, #, LessEqual, 9]}}]& ) -> 
       "sine", (Piecewise[{{#^2/16, 0 <= # <= 4}, {0, 
           Inequality[4, Less, #, LessEqual, 9]}}]& ) -> "exponential"}}, {{
       Hold[$CellContext`func2$$], PDF[
        NormalDistribution[0, 1], #]& , 
       Style["signal 2", 
        RGBColor[1, 0, 0]]}, {(Piecewise[{{1, 
           Inequality[0, LessEqual, #, Less, 1]}, {0, # >= 1}}]& ) -> 
       "impulse", (Piecewise[{{1, 0 <= # <= 3}, {0, 
           Inequality[3, Less, #, LessEqual, 9]}}]& ) -> 
       "box", (Piecewise[{{1, 0 <= # <= 2}, {-1, 
           Inequality[2, Less, #, LessEqual, 5]}, {0, 
           Inequality[5, Less, #, LessEqual, 9]}}]& ) -> 
       "square", (Piecewise[{{
           Sin[#], 0 <= # <= 7}, {0, 
           Inequality[7, Less, #, LessEqual, 9]}}]& ) -> 
       "sine", (Piecewise[{{#^2/16, 0 <= # <= 4}, {0, 
           Inequality[4, Less, #, LessEqual, 9]}}]& ) -> "exponential"}}}, 
    Typeset`size$$ = {360., {210., 214.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`n$165607$$ = 0, $CellContext`func1$165608$$ = 
    False, $CellContext`func2$165609$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`func1$$ = PDF[
          NormalDistribution[0, 1], #]& , $CellContext`func2$$ = PDF[
          NormalDistribution[0, 1], #]& , $CellContext`n$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$165607$$, 0], 
        Hold[$CellContext`func1$$, $CellContext`func1$165608$$, False], 
        Hold[$CellContext`func2$$, $CellContext`func2$165609$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> GraphicsColumn[{
         DiscretePlot[{
           $CellContext`func1$$[
            Mod[$CellContext`n$$ - $CellContext`m, 10]], 
           $CellContext`func2$$[$CellContext`m]}, {$CellContext`m, 0, 9}, 
          PlotStyle -> {
            Directive[
             PointSize[Large], 
             Opacity[0.9]], 
            Directive[
             PointSize[Large], 
             Opacity[0.7]]}, AxesLabel -> {"m", None}], 
         DiscretePlot[
          
          Sum[$CellContext`func1$$[$CellContext`n$$ - $CellContext`m] \
$CellContext`func2$$[$CellContext`m], {$CellContext`m, 0, 
            9}], {$CellContext`n$$, 0, $CellContext`n$$}, 
          PlotRange -> {{-0.1, 9.1}, Automatic}, PlotStyle -> {Thick, 
            PointSize[Large]}, AxesLabel -> {"m", None}]}], 
      "Specifications" :> {{{$CellContext`n$$, 0, "shift n"}, 0, 9, 1, 
         Appearance -> "Labeled"}, {{$CellContext`func1$$, PDF[
           NormalDistribution[0, 1], #]& , 
          Style["signal 1", 
           RGBColor[0, 0, 1]]}, {(Piecewise[{{1, 
              Inequality[0, LessEqual, #, Less, 1]}, {0, # >= 1}}]& ) -> 
          "impulse", (Piecewise[{{1, 0 <= # <= 3}, {0, 
              Inequality[3, Less, #, LessEqual, 9]}}]& ) -> 
          "box", (Piecewise[{{1, 0 <= # <= 2}, {-1, 
              Inequality[2, Less, #, LessEqual, 5]}, {0, 
              Inequality[5, Less, #, LessEqual, 9]}}]& ) -> 
          "square", (Piecewise[{{
              Sin[#], 0 <= # <= 7}, {0, 
              Inequality[7, Less, #, LessEqual, 9]}}]& ) -> 
          "sine", (Piecewise[{{#^2/16, 0 <= # <= 4}, {0, 
              Inequality[4, Less, #, LessEqual, 9]}}]& ) -> 
          "exponential"}}, {{$CellContext`func2$$, PDF[
           NormalDistribution[0, 1], #]& , 
          Style["signal 2", 
           RGBColor[1, 0, 0]]}, {(Piecewise[{{1, 
              Inequality[0, LessEqual, #, Less, 1]}, {0, # >= 1}}]& ) -> 
          "impulse", (Piecewise[{{1, 0 <= # <= 3}, {0, 
              Inequality[3, Less, #, LessEqual, 9]}}]& ) -> 
          "box", (Piecewise[{{1, 0 <= # <= 2}, {-1, 
              Inequality[2, Less, #, LessEqual, 5]}, {0, 
              Inequality[5, Less, #, LessEqual, 9]}}]& ) -> 
          "square", (Piecewise[{{
              Sin[#], 0 <= # <= 7}, {0, 
              Inequality[7, Less, #, LessEqual, 9]}}]& ) -> 
          "sine", (Piecewise[{{#^2/16, 0 <= # <= 4}, {0, 
              Inequality[4, Less, #, LessEqual, 9]}}]& ) -> "exponential"}}}, 
      "Options" :> {FrameLabel -> {"", "", 
          Style["Circular Convolution", Large], ""}}, "DefaultOptions" :> {}],
     ImageSizeCache->{423., {296., 301.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({Attributes[PlotRange] = {ReadProtected}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.488821210640625*^9, 3.488821499453125*^9, 3.48882157225*^9, 
   3.488822499875*^9, {3.488823093109375*^9, 3.488823115609375*^9}, 
   3.488823239265625*^9, 3.488823288734375*^9, {3.488823505*^9, 
   3.488823555515625*^9}, 3.4888235865625*^9, {3.488886058203125*^9, 
   3.488886082609375*^9}, 3.48888623453125*^9, 3.4888862773125*^9, 
   3.488886324875*^9, 3.488886743890625*^9, 3.488886830015625*^9, 
   3.48888706315625*^9, 3.488887376109375*^9, 3.488887469734375*^9, 
   3.488887514734375*^9, 3.488887802328125*^9, 3.488888399375*^9, 
   3.4888887035625*^9, 3.488888796359375*^9, 3.488889450328125*^9, 
   3.48888954746875*^9, 3.48888999978125*^9, 3.48889011353125*^9, {
   3.488891720796875*^9, 3.48889173390625*^9}, {3.488892381265625*^9, 
   3.4888923891875*^9}, 3.488893184578125*^9, 3.48889585615625*^9, 
   3.488896835453125*^9, {3.48889713690625*^9, 3.48889716428125*^9}, 
   3.488897331984375*^9, 3.4888973785*^9, 3.488898822484375*^9, {
   3.488901531125*^9, 3.488901550765625*^9}, 3.4889016344375*^9, 
   3.488901723671875*^9, 3.488902067921875*^9, 3.48890210925*^9, 
   3.488902171*^9, 3.488902679171875*^9}]
}, Open  ]]
},
WindowSize->{978, 956},
WindowMargins->{{Automatic, 196}, {2, Automatic}},
DockedCells->FEPrivate`If[
  FEPrivate`SameQ[FEPrivate`$ProductIDName, "MathematicaPlayer"], 
  FEPrivate`Join[{
    Cell[
     BoxData[
      GraphicsBox[
       RasterBox[CompressedData["
1:eJztXXdYFNfaz3O/f+79vudek3vTLKBIEaQpTRC7BgtqLCTWGxNjYsFookE0
NoxRY6oFuyIiWJCO9N4WWHrZpSy7VKkiBo2iy+5+Z/fsHg4zO7NLUZJ4fs/I
Mztz5j3v+87u+zvnPe+Meuu3L1v/P6+99poJ+Gf+t9dek+8LBwiBIHvu/Byd
ManLXMoSE+ExkQoZX+8W641rHWPUaDZZav+BZOoa6ZRVkhkftXrdrC3lg60h
JuGh667nVjNkJjbd4ywfjhzbcP7iQFUiICAgIHiVkHfVO0dHL0tnDFd/XNGH
q/g3bgrz84VFRVmnznAMrGRjDCSjxz6xmCFx3iFZtl/ickC6ZK/U6YtnS7Y/
c/6s23Zpt8V73aaOz8wdn+pbto4yqI2NG2qDCAgICAj+HIBTHn5GRrGhMV9H
r0hXr1hnbKGuQaGlQ6G9U5TJTJ7ZFJneaNnoMd0GZl1rjos3X+7efEn8uafk
k1OSlUfFi78RO30htl/5fOK8p2ZTmnXHNxlbVWVzh9osAgICAoI/ByANVVVU
5DpMKRs1pnS0fumYcTwDywIjh6IJixMcVrWNt5HTkL5Bt/7YR9OXi9yv1+7y
urfLu/1rryfbLnR/7iledUQ8b7vYcUXn+Ol1uhZ1EycLCwuH2iwCAgICgj8B
0AIQ2C9Yv0E4ckyNvmmh8YSs2U6chUvTlq9JcFnDc5pR9t4M/rw5/IULeDMd
M9Z9lrTVLWXLDs7Wr3O3uhVt3sn79Ev+2k2lLmvy5r+fY2JXZjO9qrh4qC0j
ICAgIPijQ4RB/vGAR72OUaHlpIqzhxsCL9QHXq4N9q4L8mryP9d051xT4IWm
oEtNARca75yvC79eG+Fbd9e3/q5vQ4TvvfDrjaE+94KuNgRfFvmdips8jZ+W
wd51VXl5bkCgIENDMwICAgKCvyoA9VSroOShbw7UjbXJ/+KzxqCrLSHhTZFJ
dbEZnRFRv4eGPQqP7IyK64yN74yL7wwP74iOackrbCkobs0taOXmt3FyHyRx
QPv6oIi68IhSz3NRK9bnht2tEgjwHiv4/JykpOgTJyI/3cBdubru7Pnq0tIh
sp7g1YUgNFTg4zPUWhAQvLpA0x9IQDUKyJlIKCxfuqbOYm7RQbfG8KC2pLzG
tIKWhHTeuXPtsUlPsoseZxU+zsp/xC14lMF9lJjSmc7pKK1oLxO2lQjasoub
knKqYzKqIlOrEzOrwuJDxtpfe2fMRSs7/wWLvZe5/DR/wS7HyTuNx/365lvh
7wxvWLuuLi1tqD1B8CoCcBDvtdfAxtfRAfsvqJcMMs0n+OsiIiLC1dX12LFj
PB6vfxJwGgIEVKuAqKKi6OB3FaZzBDPW5Xnsro2+W59e0JKc2ZGUGjppcqrD
NN4V7/a84of5JR25RR25hR0cLjjVEZ/Qnpp2PzWtOT6pNjqxKiy2PCymMjaJ
Fxrx7bsjdg1745dhbx/4xz+//Pv/nvjXsKi33m4Zrts9fkLzZa/B9QkBQZ9Q
sXFj+cqVciYaNqwqOXnQ5efl5Z09e3bQxRIQ/EEARlmBgYF79uzx8tI2mPMz
OKnXrqVcv56flFReVARmPVUCQSWPV87llsbF8QKDC095Zi9akW04JcveJXOB
a46He/XdoObY5N/iku9ncFPmL7ynY1ww0iB5xWp+cFhTblFrTmEzh9uSmtma
kNwaGdUYGlIXHCgM8C+/daPI93pxSFDW7ZtfvPPumRHjfN/R8X9nROUYPamh
kUxPr9vSuj787gv1DwGBlgBkBJiozNFx0CUTGiJ4FeDn5weYSMvGIj6//nYQ
d8VHZ/QND41491drK087uyAb23Rru6yJtlwbB96kqeWWtgJzxxqrWS02Mwr3
bK2/49MWGduWlH4vIztunnOVgUW1qW2Fnmmq/vikbV/yI2JqOTm1yZy6+OS6
qJi64BBRQED5rZulfr55167mBfjzbt3Ot5xeZ+oonjhdamYvNZkg0x/XbTmh
PibmhbpF4OMzWDn/qvx8ubQXlrQhGHKAeRDMzg36OhGhIYJXAWBO5Orq2tf8
c11ymuiLr/JMLTMMxsUYjeNaTOh0mCab5CiznCgzMpTpj5YZjJWNG5/n7iq6
ff1eVEJdQpowNSNyrnOpkWWpmS3PzK7c1DZ/jEnkRLuUI9/zoxOq4lMFEdGV
AcEVN2+X+PkW+Hhnel3m3bnTGp0iXXdIsnibZOpKqe08qYmtxNT6XkiI9qoC
FoAhAmxgHx3nDxumNnTAkS3awEd0Cgx38UEv5SOA8pJdu9CRyiNHUEegJTiF
LoH7PNXbk4AaFH3o0nCxcjlmZnjX8ryQykCYKULKI6PAcRAzgQJgQ8wIdvg6
OmiNA16LhKMYW3n6NHIpaAPtApeUL1gAdYZaIT/TL4S9QK1AG+hAIAfYCCRA
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
jHv1XEF4pCghpTktozklpSk2tvJueEFQUHN6dktmXms6tz2n6GFWwf3/7nm8
dPvTmRu6HVaJrRdLzGdLLabLLGdKJ0xt3/xlDSeTST16YS0Kvzw886MqpcOv
VfsyH41JOYqEHk1UKzKMqioa4OvjkMKY2kOggjeKRUIsXNMnAjDA4sJ71b9t
3Ag1wSuK4doNntPDzdRsF94Xg11QDt4F/sgqTJohTdRm4egaMjXGQbmJFOqh
DwbotxId6aU83ck0R+GiKF8ABI00BDkIpwD2qNvXZkzBrX8YXN0Gt9NB7/fF
yVSLftNQv6GxYJsFg+sWxEQPP/28e7zVM3OHbus5YkeXZ4u2ta7en394T1PY
rYfR0Q/iE9tSUv3nOCVbTCj5fFXOmR/ygoOFsQn1iUnC2PjqmNjGmJjau3cr
Q0Jy7vjfi0u6l8Spi0tv4uS1cwoebvjuscuurtmfPrVdKLZ4T2LuJB0/VWZs
JzOeJH9SyXJK20cbqgODhBUVFN3QyBYdQUkh/CDLEjYFfaKhl4CelwaoFiPQ
KWQ7ngViB+XRKnqt9csHvZxMbcwfCChrVWi9RllF0PsZ25cPjTQERpj4VEio
9Q+c5YU5lC4IDQ0EWvp54Hj5NKTx8VUWvAhXV2zcLB5rLDaxemxo0TbOttl8
Vp3DysIFm7MPudcGXGsJCWoJC2uMiAxZOC/tm23ZftfKgsOEkVGCiKiy8IjS
sPDCkJDioKDSO3cKb91Mu36tKiRSEJtWGZVSk5zdmpLzdN13Txdu67JZJjZ9
76nt3IdrtzzYe7j1hGfLxSvNV661el7o2Pvtgx27m05Rf614il6lpzLm4JVa
9GZMUEtDlFK0lww8TUQZbOOntKESuEZPf6eExveevVAAAoLrWRSt2NOVfZJP
yf7hXw+1dX0vExppyJX2Ji7tf+DalCQNIQ3Ra9sG0qk20l7QzAX3M1q+H3S8
fBoSanqZj8YLB64AhIjHa3XdLh6l1zVKr11Hv1HXQDTWtGb8ZJ7V/Jx5GzkH
vxb4Xay+4Su6dav61i3Ozz8WXvctvu1f4u8vCAgUBAYW37qVfv168rVrYMu4
ejXzypXYC+dLfG/zwxL4QbG1iZltabnPluwQO6zsdNnUeupiTXYOoyqCKsoB
EGHQ0rayiSLPQzkIV8O1CWsUGkIpIxCmhmrADF/dqXyjWu8JgnyJSnWqf+/3
1vK9Zy8ZUKvBcjhcBcM3+GgtPEt5WevLh0YaokyFhIM9/B4SGqK/jLR/L71k
ksbk0peQQBsSGqK/mkDtwf6B5dWmLBhEVzf53nruOKtzlF7NOLOaibaVVrZC
m0k8Q9N8HeNsI/u0mavjN3/Gu+lVfsOv3P92xR1/fsCdquBgUWxcbSa3Pr+o
LqegIT2zNia+MiiIc8Mv9qpXrNeVqCuXMq/5VIbHC6OSH1TV1kXEPp+8+vfl
m0T8skHReSCAMR9P36F6hiEcML840O39IwAuu7yc/zgDkdRQ/T8dQ/4fPQxi
vBK+xAxV//AHV48dg3unXjQGxdWi4mKB5/nwj9cH7tmTHxhUmZMjKCkRlpYK
i4srk5MLz5xNfn9VmPX84ElTOD//IORmN1VWtolEbXX1bU3N91va2lsVW3PL
g8bmjsam+w2NrbUNzVXCmoqKSj6/qozfJqp+9OBhe01N8axlT0xmNt64Myi2
ExD8uTDkNERA8IdFVWlpEZdLP44qFspzc8Ns5/jpG9wwNoqYM6dw3cYS96NZ
e49x9hzJ3Hck99BxsHEPHM13P8jf8U32VveUDV8lfOYWu37nTecl+6c6Rs9b
kL9kdan17DaL6Y8MrOvDyH+0SvAqAtYGD7UWBAR/MiAmCpjl9Mub/z45YozA
dq5k44nn+7ybvrsuOOIjOHpN+IOv6Mfrwh98ag9d/H37MeHGw/lr92Ws+zZ9
1cGi5bt8jO02vvF6pZFZnfGEJkPz+7oGNX43h9osAgICAoI/E8rS0o6OHO7x
+ptn39HvmuwiWbZXsun0E7eLD/Z6tRz0bvDwrj10tcbjSsO+i+0bj7as+7Z6
xYHyNYf5y3bxnT6vmvxhpJ55/CjdyrGGVXpG9Tp6Fd8dHWqDCAgICAj+PBAI
kn788cib7+7/v9dTdMdJHN6XzNkgWbZb8slPkq1nn3198fHuK527L993v/Rg
57nfPj32ePV3vy37pn353ntzNtZMcqk0nV5mZJU1Wi911Oji0XplI3XLFi0V
VlEL4QgICAgICNSiSiDITUw8NFLH45+vPzOxlk6cKZm0WDJtjWzWZtnifdI1
30s2/Nq98WT3phPP133/fOWhrkV7njq5ds5c/8hycfPUJTV2s/ijDXOGj4ob
PjJ+pA5nhG6OoXGFuqUoAgICAgICtcgIDV3/93+kDB8pNZkgHW8nM50msXPu
ctny++aDzz50k87cIlm0W7LIXeK8s9tp29MpH/9us/ypyezWo7+IioqFYAsK
Llm5OmXM2MC33ol8e0TcuyNzvTW/QY6AgICAgADiyv59B//1L5m+vsxgnNTM
utP1q7pU5ZPLovKKhx4nZXYrpFP+K53yUbfd8qcWzl2G03775AuKEF5sbMJS
lytv/Mf/P29HOi8ieTkCAgICAm1QJRBstbYSDB8p09Pres+pITqG3qbzKw+Z
zWLpxLkSG+cnxtO6jB3r45PUSuNcunRGR/fCsDdq1ckhICAgICCgICs5+ei/
/y3T0ev48isRwzvuqotKxLOWyl+UbT7tmZH9o8WrhAIBk8Di5OTjxkZx06eT
CREBAQEBgUb8vGVz24jRTZ7n2Js13wyQjbeXmTmKDa3aftXw/kwel/uzpYXo
0uXBU5OAgICA4C+IHA7n0tvD205d0Kbx74s/lBlNkBpb18TFa2zMz8uLcd1a
nZM7YB0JCAgICP6yuPT1zta9h7Vs3HLJS2Zs02ntWFFYqE378sLCCkJDBAQE
BAQMyMrI4B//Rfv2osrKbodZ9xcseXEqERAQEBC8OqgoLu5rFcGTlRu4HwzZ
/25JQEBAQPBHw/8DCp03+A==
        "], {{0, 0}, {557, 41}}, {0, 255}, ColorFunction -> RGBColor], 
       ImageSize -> {557, 41}, PlotRange -> {{0, 557}, {0, 41}}]], 
     "DockedCell", Background -> GrayLevel[0.866682], 
     CellFrame -> {{0, 0}, {0, 4}}, CellFrameColor -> 
     RGBColor[0.690074, 0.12871, 0.194598], CellMargins -> {{0, 0}, {-3, 0}}, 
     CellFrameMargins -> 0, ContextMenu -> None, 
     ComponentwiseContextMenu -> {}], 
    Cell[
     BoxData[
      GridBox[{{
         GraphicsBox[
          RasterBox[CompressedData["
1:eJztWl1Ik1EYFrqNEoLMbHPmNkRrEhJERj93ra4cJvbDRIsyMk1pc03tTL1w
aD+LfkQIJBkR/dBFdtHFDLywCykqoqgLIYRu6jbb8me933e+HT/P2fZN+sZ0
vg9n43zfec973nPe57zvOWNFDS2OhnU5OTlG+LyBj1S/ikAgEAgEAoFAIBAI
xEpFMBh8jUgPYG0z7d7MAOYedm/Bko4Ca5tp92YGSCokle5AUiGpdAeSCkml
O0RS/R1tjEajUIHvyIhdehPyLNZjrVSAgT5CK1Tmf32e+/qcdYEy+/4+vKTd
oQJN89PjojbaHcrCzE8qn0RGfIxrEjcF0SomD49hYqDDUUSGKtUKWRMYz42L
pFJDg1RPamGdlRWGuuDi2Yl+WHkoiy72W6jjgFeSm/wWKEAScCvtCxWpSzxt
1FPU9dJ76Lt8UnEmcVMQrWImUQE6nKJB7sgUKpb4LcpEtHiFpEpEKim2TI8n
IhXv4pAHXCAJEAPIq7d5JFAOYYEGKHEstTbQAJKSx+XH5ZKKE+CmIFq1ZC/E
SBVXoboJyMliKZKKgyapwLlK1ohHKgpYYfGRbnNpg4c8dP3prtckFQ0gUm5K
miKpVZxnRZP4KcSziiU1bjhOobpJ2TtIqnhITipYZ7byydJfoDzMpT9ZWMo1
EHbgBBLyhOWzlmakUtKQnB/VuUYkFbWNjZXIJHEKnFVL0t+IXSQVU4iRKkUk
JxVzhJI7hirpDpXOGzJ5eFLFvMNORxAlaJZhmtmZStQGAvSQA/FECSksH/kt
VLMyokw5qHDOFU3ipiBaxZmtTSo8U2lBI1LF/BWNXZ0Y1LckLo9IqQdYIWdA
9T0uvPT2J2qjrUr2lGMRSzrq4eiIVIxFGC5bMZO4KYhWcWYnSn8gv3j7k+vJ
GbVaSNXt9fo6O/XVib9Tpa+sClLdvtB0q+WSvjqRVGucVA/q6p9V1+irE0m1
xkk1cuLk2O49+upEUq1xUg1X14yZraSrS0ed+H+q9GFV/J+qx25/u9U40Nqa
aUMQ2YMrFRWf8g0vDh9JvUvgYjPR+8KIyA5AyiNeb1Pe5ql840xxSV97eyq9
Hp1y3nE602waYoXC19GRqInIGHC57lY53Lm53/O2RQ3Fr6qqNXUG609/LLX1
ulOiHyL74D/XeLPxvPiexHDtsuulyexbv2GqwLRgNP8xl/W7XAQE1IUQ1nHw
zNl5o2XYoc09RLbC5/E8te26V9+gfskY5SPkuss1abLc2Ljpm9E8Z7FFt++c
POroJoQWn1wotQAPj9XMFZp/m6y9bndGpoNYCZBikbNuoqBwsPY4IxIrQJu+
trYf5pLRfOOXotJw6d7Zsv0LtkOPzzb1ENKjolagueVD5YGodUfEZH2372Cm
p4X4X/wDFcRtOg==
           "], {{0, 0}, {199, 30}}, {0, 255}, ColorFunction -> RGBColor], 
          ImageSize -> {199, 30}, PlotRange -> {{0, 199}, {0, 30}}], 
         ButtonBox[
          GraphicsBox[
           RasterBox[CompressedData["
1:eJztlDFuhFAMRJHS5w45Re6RI+wFcoOUtNtR0lJSUlNSUtNS0m9JXjTKaPQh
UfpgCeT1n2+Px15ebu9vt6eqqp55Xnm+/I/L/p+1bbtt277vvJumIcKbnwWs
73vBsHVdE1bXNQ55Ho8HMOEd3L9tWRZ+6tRBrrjEMAwigHO/37M6SII40zRB
Q7QLkpQWjKOu63RqGHHVIoOYYAR16oucinYGxUo2jqMIzPNMnpQRPF2nMkeS
cCBDXsm7ZNZp6oZRS3wsIBFNIYM2iY8gYmJA8imqawHcOAKqio4KSp4O7Qjp
K1nOUygasaG2hoKSaud3krkArggZzyhhTohP3Uz7E0mNu9g98oj26exOSTon
fRUtn8IUJL+W80gyuz6OW3mgrSXXEv5dSaRTaRz9KQpY/knxtVomKdFQxvFT
JZFR6pFBJWT5tbEvR9+H3F6S+GOSMC+DTHtrHYyh32Qu855cdhn2CUundjY=

            "], {{0, 0}, {55, 14}}, {0, 255}, ColorFunction -> RGBColor], 
           ImageSize -> {55, 14}, PlotRange -> {{0, 55}, {0, 14}}], 
          ButtonData -> {
            URL["http://store.wolfram.com/view/app/playerpro/"], None}, 
          ButtonNote -> "http://store.wolfram.com/view/app/playerpro/"], 
         GraphicsBox[
          
          RasterBox[{{{132, 132, 132}, {156, 155, 155}}, {{138, 137, 137}, {
           171, 169, 169}}, {{138, 137, 137}, {171, 169, 169}}, {{138, 137, 
           137}, {171, 169, 169}}, {{138, 137, 137}, {171, 169, 169}}, {{138, 
           137, 137}, {171, 169, 169}}, {{138, 137, 137}, {171, 169, 169}}, {{
           138, 137, 137}, {171, 169, 169}}, {{138, 137, 137}, {171, 169, 
           169}}, {{138, 137, 137}, {171, 169, 169}}, {{138, 137, 137}, {171, 
           169, 169}}, {{138, 137, 137}, {171, 169, 169}}, {{138, 137, 137}, {
           171, 169, 169}}, {{135, 135, 135}, {167, 166, 166}}}, {{0, 0}, {2, 
           14}}, {0, 255}, ColorFunction -> RGBColor], ImageSize -> {2, 14}, 
          PlotRange -> {{0, 2}, {0, 14}}], 
         ButtonBox[
          GraphicsBox[
           RasterBox[CompressedData["
1:eJztlSGSg2AMhTuzfu+wB1qzR+gF9gbIWhwSW4lEV1ZWYyvxSPZb3vAmDdDq
zpCZdvKH5CUvfwhfx9+f48fhcPjk983vXy922eU9paqqcRx9HGcZhiE+PZ1O
KHVd24KOgt0WFKLQ27ZdJrper0JGcS5CVqs6n89yRpGl73tZBK6kkvv97kCe
ChOlLEvbVW2kiYPoxKcYRdwWld00jS2EcFSFMYXCqbOcBJzL5aJcxK7SFEFB
GQFn8AWupPUkMRfIJEK53W5d1z2hGVP7yohVbfanWoxAJQTfeywbT1+xK9mi
GQGTj8FT0uRAN3Tdjl3SlNANP5WoabIIRP+x52ojLEgXs8fxs7+R1cCXNFH6
SVJhKZwx0+BxBZ7nraGNpBSrEFlA1khgRDcCRg1navIWTeVKPVmliaeaL+c4
tCmcknRHfjtWaS6HNtYmC1wYjGJ+6eKjJcficWgVssz1nGbabFtD682gZaIO
MHXqkq/vyW3GFaQXliNuOhbz9lOHU3a6SrhWkCmnXC9pUoPBt1aQpquYrtJt
0f6Pazkd497W1MkSlxierkrrN254iz8oHqS0ByzxGzfOHx2yq9plYSl8l13e
Xf4ArlmHrg==
            "], {{0, 0}, {77, 14}}, {0, 255}, ColorFunction -> RGBColor], 
           ImageSize -> {77, 14}, PlotRange -> {{0, 77}, {0, 14}}], 
          ButtonData -> {
            URL[
            "http://www.wolfram.com/solutions/interactivedeployment/\
licensingterms.html"], None}, ButtonNote -> 
          "http://www.wolfram.com/solutions/interactivedeployment/\
licensingterms.html"]}}, ColumnsEqual -> False, 
       GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}]], 
     "DockedCell", Background -> GrayLevel[0.494118], 
     CellFrame -> {{0, 0}, {4, 0}}, CellFrameColor -> 
     RGBColor[0.690074, 0.12871, 0.194598], CellMargins -> 0, 
     CellFrameMargins -> {{0, 0}, {0, -1}}, ContextMenu -> None, 
     ComponentwiseContextMenu -> {}, 
     ButtonBoxOptions -> {ButtonFunction :> (FrontEndExecute[{
          NotebookLocate[#2]}]& ), Appearance -> None, ButtonFrame -> None, 
       Evaluator -> None, Method -> "Queued"}]}, 
   FEPrivate`If[
    FEPrivate`SameQ[
     FrontEnd`CurrentValue[
      FrontEnd`EvaluationNotebook[], ScreenStyleEnvironment], "SlideShow"], {
    Inherited}, {}]], Inherited],
FrontEndVersion->"7.0 for Microsoft Windows (32-bit) (November 10, 2008)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[545, 20, 3650, 92, 152, "Input"],
Cell[CellGroupData[{
Cell[4220, 116, 5287, 122, 232, "Input"],
Cell[9510, 240, 7333, 139, 614, "Output"]
}, Open  ]]
}
]
*)

(* NotebookSignature sw0JvI@wbwm8XC1tMBBOcqbH *)
