# stabelxui-test-RTXml

# build:
    time haxelib run lime build html5 -Dcanvas -Dsource-map-content -debug --connect 6000
# run in browser:
    cd Export/html5/bin
    python -m SimpleHTTPServer
    
# error:
   ```
   js__$Boot_HaxeError {val: {…}, stack: "Error: EUnknownVariable(Main)↵    at hscript_Inter…ener (http://localhost:8000/Stablexui.js:4544:54)"}
val: {_hx_index: 5, v: "Main", __enum__: "hscript.Error", toString: ƒ}
message: (...)
stack: "Error: EUnknownVariable(Main)↵    at hscript_Interp.resolve (http://localhost:8000/Stablexui.js:9304:10)↵    at hscript_Interp.expr (http://localhost:8000/Stablexui.js:9327:16)↵
   ```
