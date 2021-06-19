let editor;
let defaultCode ='console.log("Hello world!")';
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
    try{
        console.log(new Function(userCode)()); 
        document.getElementById("output").innerHTML = logMessages;
    }
       
    catch (err){
        console.error(err);
    }

}
console.log = function() {
    logMessages.push.apply(logMessages, arguments);
    logBackup.apply(console, arguments);
};