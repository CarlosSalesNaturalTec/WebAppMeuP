function ExibirModal() {
    document.getElementById('id01').style.display = 'block';
    document.getElementById('input_User').focus();
}

function SignIn() {
    document.getElementById('id01').style.display = 'none';
    window.open('SignIn.html', '_parent');
}

function TentarLogin() {
    window.open('CAD_Lojista.html', '_blank');

}