package org.example.ORM.DTO;

public class Film_Category {
    private int id_category_film;

    private String name;

    public Film_Category(int id_category_film, String name) {
        this.id_category_film = id_category_film;
        this.name = name;
    }

    public int getId_category_film() {
        return id_category_film;
    }

    public void setId_category_film(int id_category_film) {
        this.id_category_film = id_category_film;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
