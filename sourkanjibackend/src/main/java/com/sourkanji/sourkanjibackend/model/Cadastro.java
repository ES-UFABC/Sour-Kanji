package com.sourkanji.sourkanjibackend.model;

public class Cadastro {
    private String nomeCompleto;
    private String emailUsuario;
    private String senhaUsuario;
    private String profilePicture;
    
    private String confirmacaoSenhaUsuario;

    public String getConfirmacaoSenhaUsuario() {
        return confirmacaoSenhaUsuario;
    }

    public void setConfirmacaoSenhaUsuario(String confirmacaoSenhaUsuario) {
        this.confirmacaoSenhaUsuario = confirmacaoSenhaUsuario;
    }

    public String getNomeCompleto() {
        return nomeCompleto;
    }

    public void setNomeCompleto(String nomeCompleto) {
        this.nomeCompleto = nomeCompleto;
    }

    public String getEmailUsuario() {
        return emailUsuario;
    }

    public void setEmailUsuario(String emailUsuario) {
        this.emailUsuario = emailUsuario;
    }

    public String getSenhaUsuario() {
        return senhaUsuario;
    }

    public void setSenhaUsuario(String senhaUsuario) {
        this.senhaUsuario = senhaUsuario;
    }
    
    public String getProfilePicture() {
        return profilePicture;
    }

    public void setProfilePicture(String profilePicture) {
        this.profilePicture = profilePicture;
    }


}