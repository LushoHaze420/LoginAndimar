function togglePasswordVisibility(tbPassword, cbMostrarContrasena) {
    var tbPassword = document.getElementById(tbPassword);
    var cbMostrarContrasena = document.getElementById(cbMostrarContrasena);

    if (cbMostrarContrasena.checked) {
        tbPassword.type = 'text';
    } else {
        tbPassword.type = 'password';
    }
}
