let editor;
let defaultCode ='console.log("Hello world!");';
var logBackup = console.log;
var logMessages = [];
function showEditor() {
    editor = ace.edit("editor");
    editor.setTheme("ace/theme/dracula");
    editor.session.setMode("ace/mode/javascript");
    editor.setOptions({
        enableBasicAutocompletion: true,
        enableLiveAutocompletion: true,
    });
    editor.setValue(defaultCode);
}

function executeCode(){
    const userCode = editor.getValue();
    document.getElementById("output").innerHTML = "";
    logMessages =[];
    try{
        new Function(userCode)(); 
        var result = "";
        for(let i = 0; i < logMessages.length; i++){
            result += logMessages[i];
        }
        document.getElementById("output").innerHTML = result;
    }
       
    catch (err){
        console.error(err);
        document.getElementById("output").innerHTML = err;
    }

}
console.log = function() {
    logMessages.push.apply(logMessages, arguments);
    logBackup.apply(console, arguments);
};