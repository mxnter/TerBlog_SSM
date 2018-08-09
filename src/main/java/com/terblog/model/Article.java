package com.terblog.model;

public class Article {

    private  int id;
    private  String title;
    private  String content;
    private  String data;
    private  String time;
    private  String bz;
    private int state;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz;
    }

    public int getState() {
        return state;
    }

    public void setState(int recycled) {
        this.state = state;
    }


    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", data='" + data + '\'' +
                ", time='" + time + '\'' +
                ", bz='" + bz + '\'' +
                ", state=" + state +
                '}';
    }
}
