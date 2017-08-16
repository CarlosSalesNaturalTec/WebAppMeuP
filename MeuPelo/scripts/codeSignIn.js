function NovoUsuario() {

    var v1 = document.getElementById("input_nomeRazao").value;
    var v2 = document.getElementById("input_User").value;

    var v3 = document.getElementById("input_psw").value;
    var v3a = document.getElementById("input_pswConf").value;
    
    var v4 = document.getElementById("input_endereco").value;
    var v5 = document.getElementById("input_numero").value;
    var v6 = document.getElementById("input_complemento").value;
    var v7 = document.getElementById("input_telefone").value;

    if (v1 == "") { alert('Informe Nome ou Razão Social!'); document.getElementById('input_nomeRazao').focus(); return; }

    if (v2 == "") { alert('Informe e-mail!'); document.getElementById('input_User').focus(); return; }
    if (v3 == "") { alert('Informe Senha!'); document.getElementById('input_psw').focus(); return; }
    if (v3 != v3a) { alert('Senhas não conferem!'); document.getElementById('input_pswConf').focus(); return; }

    if (v4 == "") { alert('Informe endereço!'); document.getElementById('input_endereco').focus(); return; }
    if (v5 == "") { alert('Informe número do endereço!'); document.getElementById('input_numero').focus(); return; }
    if (v7 == "") { alert('Informe telefone!'); document.getElementById('input_telefone').focus(); return; }

    document.getElementById("btSignIn").style.cursor = "progress";
    document.getElementById("btSignIn").disabled = true;
    document.getElementById('divHidden').style.display = 'block';

    $.ajax({
        type: "POST",
        url: "WebService.asmx/usersave",
        data: '{param1: "' + v1 + '", param2: "' + v2 + '", param3: "' + v3 + '", param4: "' + v4 + '", param5: "' + v5 +
            '", param6: "' + v6 + '", param7: "' + v7 + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var linkurl = response.d;
            window.open(linkurl, '_parent');
        },
        failure: function (response) {
            document.getElementById("btSignIn").style.cursor = "pointer";
            alert('Tente Novamente');
        }
    });
}