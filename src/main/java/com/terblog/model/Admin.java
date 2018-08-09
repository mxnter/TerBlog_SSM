package com.terblog.model;

public class Admin {

    private int id;
    private String username;
    private String useramount;
    private String articleamount;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUseramount() {
        return useramount;
    }

    public void setUseramount(String useramount) {
        this.useramount = useramount;
    }

    public String getArticleamount() {
        return articleamount;
    }

    public void setArticleamount(String articleamount) {
        this.articleamount = articleamount;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", useramount='" + useramount + '\'' +
                ", articleamount='" + articleamount + '\'' +
                '}';
    }
}
