package org.example.ORM.DTO;

import java.util.Date;

public class Film {
    private int idFilm;
    private String film_name;
    private String director;
    private int release_year;
    private int duration;
    private String description;

    public Film(int idFilm, String film_name, String director, int release_year, int duration, String description) {
        this.idFilm = idFilm;
        this.film_name = film_name;
        this.director = director;
        this.release_year = release_year;
        this.duration = duration;
        this.description = description;
    }

    public String getFilm_name() {
        return film_name;
    }

    public void setFilm_name(String film_name) {
        this.film_name = film_name;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public int getRelease_year() {
        return release_year;
    }

    public void setRelease_year(int release_year) {
        this.release_year = release_year;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getIdFilm() {
        return idFilm;
    }

    public void setIdFilm(int idFilm) {
        this.idFilm = idFilm;
    }
}
