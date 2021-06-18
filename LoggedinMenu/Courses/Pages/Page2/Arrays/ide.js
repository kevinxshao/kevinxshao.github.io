let editor;

function showEditor() {
    editor = ace.edit("editor");
    editor.setTheme("ace/theme/dracula");
    editor.session.setMode("ace/mode/java");
}

function executeCode() {
    $.ajax({
        url: "compiler.php",
        method: "POST",

        data: {
            code: editor.getSession().getValue()
        },

        success: function(response) {
            $(".output").text(response)
        }
    })
}