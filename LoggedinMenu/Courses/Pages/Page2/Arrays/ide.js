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
        executeCode2();
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

function changeLanguage() {
    let language = $("#languages").val();
    if(language == 'js')editor.session.setMode("ace/mode/javascript");
    else if(language == 'java') editor.session.setMode("ace/mode/java");
}

function executeCode2(){
    $.ajax({

        url: "compiler.php",
        method: "POST",
        data:{
            language: $("#languages").val(),
            code: editor.getSession().getValue()
        },

        success: function(response){
            $(".output").text(response)
        }

    });
}