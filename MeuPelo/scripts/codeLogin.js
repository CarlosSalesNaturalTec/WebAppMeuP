function ExibirModal() {
    document.getElementById('id01').style.display = 'block';
    document.getElementById('input_User').focus();
}

function ExibirModalSignIn() {
    document.getElementById('id01').style.display = 'none';
    document.getElementById('divSignIn').style.display = 'block';
    document.getElementById('input_nomeRazao').focus();
}

function SignIn() {
    document.getElementById('id01').style.display = 'none';
    window.open('SignIn.html', '_parent');
}

function TentarLogin() {

    var v1 = document.getElementById("input_User").value;
    var v2 = document.getElementById("input_pwd").value;

    if (v1 == "") { alert('Informe nome do Usu�rio!'); document.getElementById('input_User').focus(); return; }
    if (v2 == "") { alert('Informe Senha!'); document.getElementById('input_User').focus(); return; }

    document.getElementById('btentrar').style.cursor = "progress";
    document.getElementById('btentrar').disabled = true;

    $.ajax({
        type: "POST",
        url: "WebService.asmx/login",
        data: '{param1: "' + v1 + '", param2: "' + v2 + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            document.getElementById('btentrar').style.cursor = "default";
            document.getElementById('btentrar').disabled = false;
            document.getElementById('id01').style.display = "none";

            switch (response.d) {
                case "0":
                    alert("Usuario Nao Cadastrado.");
                    break;
                case "2":
                    alert("Senha Incorreta.");
                    break;
                default:
                    window.location.href = response.d;
                    break;
            }

        },
        failure: function (response) {
            alert('Tente Novamente');
        }
    });

}

function NovoUsuario() {

    var v1 = document.getElementById("input_nomeRazao").value;
    var v2 = document.getElementById("input_UserSignIn").value;

    var v3 = document.getElementById("input_psw").value;
    var v3a = document.getElementById("input_pswConf").value;

    var v4 = document.getElementById("input_endereco").value;
    var v5 = document.getElementById("input_numero").value;
    var v6 = document.getElementById("input_complemento").value;
    var v7 = document.getElementById("input_telefone").value;

    if (v1 == "") { alert('Informe Nome ou Raz�o Social!'); document.getElementById('input_nomeRazao').focus(); return; }

    if (v2 == "") { alert('Informe e-mail!'); document.getElementById('input_User').focus(); return; }
    if (v3 == "") { alert('Informe Senha!'); document.getElementById('input_psw').focus(); return; }
    if (v3 != v3a) { alert('Senhas n�o conferem!'); document.getElementById('input_pswConf').focus(); return; }

    if (v4 == "") { alert('Informe endere�o!'); document.getElementById('input_endereco').focus(); return; }
    if (v5 == "") { alert('Informe n�mero do endere�o!'); document.getElementById('input_numero').focus(); return; }
    if (v7 == "") { alert('Informe telefone!'); document.getElementById('input_telefone').focus(); return; }

    document.getElementById("btSignIn").style.cursor = "progress";
    document.getElementById("btSignIn").disabled = true;
    document.getElementById('divCOG').style.display = 'block';

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