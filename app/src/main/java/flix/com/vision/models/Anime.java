package flix.com.vision.models;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class Anime implements Serializable {
    private static final long serialVersionUID = 128;
    public String year;
    public String status = "";
    public String title = "";
    public String date = "";
    public String other_names = "";
    public String url = "";
    public String image_url = "";
    public String plot = "";
    public String server = "";
    public String genres = "";
    public String score = "";
    public String tags = "";
    public String id = "";

    public String getYear() {
        String str;
        try {
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        if (this.title.endsWith(")")) {
            str = this.title.substring(r2.length() - 6).replace("(", "").replace(")", "").trim();
            return (str == null || str.length() != 4) ? "" : str;
        }
        str = "";
        if (str == null) {
            return "";
        }
    }

    public boolean isMovie() {
        if (this.tags == null) {
            this.tags = "";
        }
        return this.tags.contains("Movie") || this.tags.contains("movie");
    }

    public Movie toMovie() {
        Movie movie = new Movie();
        movie.setTitle(this.title);
        movie.setUrl(this.url);
        movie.setPlot(this.plot);
        movie.setServer(this.server);
        movie.setCast(this.status);
        movie.anime = true;
        movie.setImage_url(this.image_url);
        movie.setRating(this.score);
        movie.setQuality(this.date);
        movie.setType(3);
        return movie;
    }
}
