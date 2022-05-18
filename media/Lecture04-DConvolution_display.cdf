(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       150,          7]
NotebookDataLength[      9051,        194]
NotebookOptionsPosition[      8773,        180]
NotebookOutlinePosition[      9128,        196]
CellTagsIndexPosition[      9085,        193]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`func1$$ = Piecewise[{{
       Sin[# (Pi/4)], 0 <= # <= 8}, {0, 
       Inequality[8, Less, #, LessEqual, 10]}}]& , $CellContext`func2$$ = 
    Piecewise[{{
       Sin[# (Pi/4)], 0 <= # <= 8}, {0, 
       Inequality[8, Less, #, LessEqual, 10]}}]& , $CellContext`n$$ = 15, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Tooltip[
        Style["\nStart here!", 
         RGBColor[1, 0, 0], 8], 
        "Move the shift n slider to see what the output is when convolving \
one signal with another. You can change the type of signal using the signal 1 \
and signal 2 buttons."]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`n$$], 0, "shift n"}, 0, 15, 1}, {{
       Hold[$CellContext`func1$$], Piecewise[{{1, 0 <= # <= 3}, {0, 
          Inequality[3, Less, #, LessEqual, 9]}}]& , 
       Style["signal 1", 
        RGBColor[0, 0, 1]]}, {(Piecewise[{{1, 
           Inequality[0, LessEqual, #, Less, 1]}, {0, # >= 1}}]& ) -> 
       "impulse", (Piecewise[{{1, 0 <= # <= 3}, {0, 
           Inequality[3, Less, #, LessEqual, 9]}}]& ) -> 
       "box", (Piecewise[{{1, 0 <= # <= 2}, {-1, 
           Inequality[2, Less, #, LessEqual, 5]}, {0, 
           Inequality[5, Less, #, LessEqual, 9]}}]& ) -> 
       "square", (Piecewise[{{
           Sin[# (Pi/4)], 0 <= # <= 8}, {0, 
           Inequality[8, Less, #, LessEqual, 10]}}]& ) -> 
       "sine", (Piecewise[{{#^2/16, 0 <= # <= 4}, {0, 
           Inequality[4, Less, #, LessEqual, 9]}}]& ) -> "exponential"}}, {{
       Hold[$CellContext`func2$$], Piecewise[{{1, 0 <= # <= 3}, {0, 
          Inequality[3, Less, #, LessEqual, 9]}}]& , 
       Style["signal 2", 
        RGBColor[1, 0, 0]]}, {(Piecewise[{{1, 
           Inequality[0, LessEqual, #, Less, 1]}, {0, # >= 1}}]& ) -> 
       "impulse", (Piecewise[{{1, 0 <= # <= 3}, {0, 
           Inequality[3, Less, #, LessEqual, 9]}}]& ) -> 
       "box", (Piecewise[{{1, 0 <= # <= 2}, {-1, 
           Inequality[2, Less, #, LessEqual, 5]}, {0, 
           Inequality[5, Less, #, LessEqual, 9]}}]& ) -> 
       "square", (Piecewise[{{
           Sin[# (Pi/4)], 0 <= # <= 8}, {0, 
           Inequality[8, Less, #, LessEqual, 10]}}]& ) -> 
       "sine", (Piecewise[{{#^2/16, 0 <= # <= 4}, {0, 
           Inequality[4, Less, #, LessEqual, 9]}}]& ) -> "exponential"}}}, 
    Typeset`size$$ = {360., {210., 214.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`n$27954$$ = 0, $CellContext`func1$27955$$ = 
    False, $CellContext`func2$27956$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`func1$$ = Piecewise[{{1, 0 <= # <= 3}, {0, 
            Inequality[3, Less, #, LessEqual, 9]}}]& , $CellContext`func2$$ = 
        Piecewise[{{1, 0 <= # <= 3}, {0, 
            Inequality[3, Less, #, LessEqual, 9]}}]& , $CellContext`n$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$27954$$, 0], 
        Hold[$CellContext`func1$$, $CellContext`func1$27955$$, False], 
        Hold[$CellContext`func2$$, $CellContext`func2$27956$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> GraphicsColumn[{
         DiscretePlot[{
           $CellContext`func1$$[
            Mod[$CellContext`n$$ - $CellContext`m, 15]], 
           $CellContext`func2$$[$CellContext`m]}, {$CellContext`m, 0, 15}, 
          PlotStyle -> {
            Directive[
             PointSize[Large], 
             Opacity[0.9]], 
            Directive[
             PointSize[Large], 
             Opacity[0.7]]}, AxesLabel -> {"m", None}], 
         DiscretePlot[
          
          Sum[$CellContext`func1$$[$CellContext`y - $CellContext`m] \
$CellContext`func2$$[$CellContext`m], {$CellContext`m, 0, 
            15}], {$CellContext`y, 0, $CellContext`n$$}, 
          PlotRange -> {{-0.1, 15.1}, Automatic}, PlotStyle -> {Thick, 
            PointSize[Large]}, AxesLabel -> {"m", None}]}], "Specifications" :> {
        Tooltip[
         Style["\nStart here!", 
          RGBColor[1, 0, 0], 8], 
         "Move the shift n slider to see what the output is when convolving \
one signal with another. You can change the type of signal using the signal 1 \
and signal 2 buttons."], {{$CellContext`n$$, 0, "shift n"}, 0, 15, 1, 
         Appearance -> 
         "Labeled"}, {{$CellContext`func1$$, Piecewise[{{1, 0 <= # <= 3}, {0, 
             Inequality[3, Less, #, LessEqual, 9]}}]& , 
          Style["signal 1", 
           RGBColor[0, 0, 1]]}, {(Piecewise[{{1, 
              Inequality[0, LessEqual, #, Less, 1]}, {0, # >= 1}}]& ) -> 
          "impulse", (Piecewise[{{1, 0 <= # <= 3}, {0, 
              Inequality[3, Less, #, LessEqual, 9]}}]& ) -> 
          "box", (Piecewise[{{1, 0 <= # <= 2}, {-1, 
              Inequality[2, Less, #, LessEqual, 5]}, {0, 
              Inequality[5, Less, #, LessEqual, 9]}}]& ) -> 
          "square", (Piecewise[{{
              Sin[# (Pi/4)], 0 <= # <= 8}, {0, 
              Inequality[8, Less, #, LessEqual, 10]}}]& ) -> 
          "sine", (Piecewise[{{#^2/16, 0 <= # <= 4}, {0, 
              Inequality[4, Less, #, LessEqual, 9]}}]& ) -> 
          "exponential"}}, {{$CellContext`func2$$, 
          Piecewise[{{1, 0 <= # <= 3}, {0, 
             Inequality[3, Less, #, LessEqual, 9]}}]& , 
          Style["signal 2", 
           RGBColor[1, 0, 0]]}, {(Piecewise[{{1, 
              Inequality[0, LessEqual, #, Less, 1]}, {0, # >= 1}}]& ) -> 
          "impulse", (Piecewise[{{1, 0 <= # <= 3}, {0, 
              Inequality[3, Less, #, LessEqual, 9]}}]& ) -> 
          "box", (Piecewise[{{1, 0 <= # <= 2}, {-1, 
              Inequality[2, Less, #, LessEqual, 5]}, {0, 
              Inequality[5, Less, #, LessEqual, 9]}}]& ) -> 
          "square", (Piecewise[{{
              Sin[# (Pi/4)], 0 <= # <= 8}, {0, 
              Inequality[8, Less, #, LessEqual, 10]}}]& ) -> 
          "sine", (Piecewise[{{#^2/16, 0 <= # <= 4}, {0, 
              Inequality[4, Less, #, LessEqual, 9]}}]& ) -> "exponential"}}}, 
      "Options" :> {FrameLabel -> {"", "", 
          Style["Discrete Convolution", Large], ""}, LocalizeVariables -> 
        True, Deployed -> True}, "DefaultOptions" :> {}],
     ImageSizeCache->{419., {309., 315.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`y = 1, 
         Attributes[PlotRange] = {
          ReadProtected}}; {$CellContext`signallist = {(Piecewise[{{1, 
               Inequality[0, LessEqual, #, Less, 1]}, {0, # >= 1}}]& ) -> 
           "impulse", (Piecewise[{{1, 0 <= # <= 3}, {0, 
               Inequality[3, Less, #, LessEqual, 9]}}]& ) -> 
           "box", (Piecewise[{{1, 0 <= # <= 2}, {-1, 
               Inequality[2, Less, #, LessEqual, 5]}, {0, 
               Inequality[5, Less, #, LessEqual, 9]}}]& ) -> 
           "square", (Piecewise[{{
               Sin[# (Pi/4)], 0 <= # <= 8}, {0, 
               Inequality[8, Less, #, LessEqual, 10]}}]& ) -> 
           "sine", (Piecewise[{{#^2/16, 0 <= # <= 4}, {0, 
               Inequality[4, Less, #, LessEqual, 9]}}]& ) -> "exponential"}}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "PluginEmbeddedContent",
 CellChangeTimes->{
  3.5130973922109423`*^9, 3.513097486427457*^9, {3.5130975641820593`*^9, 
   3.5130975741998777`*^9}, {3.513097617278523*^9, 3.513097635038653*^9}, 
   3.515928923365827*^9, 3.5194982469867563`*^9, 3.519498285486471*^9, 
   3.521496415214881*^9, 3.5214964660253477`*^9, 3.522781864150001*^9, 
   3.522781942172489*^9}]
},
WindowSize->{978, 956},
WindowMargins->{{Automatic, 80}, {Automatic, 0}},
FrontEndVersion->"8.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (November 6, \
2010)",
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
Cell[550, 20, 8219, 158, 626, "PluginEmbeddedContent"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Kwpy2XQVGCuVKAKN4cMkEhW4 *)
