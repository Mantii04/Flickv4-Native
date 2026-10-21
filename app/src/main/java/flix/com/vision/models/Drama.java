package flix.com.vision.models;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class Drama implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long serialVersionUID = 138;
    public boolean is_series;
    public String year;
    public String title = "";
    public String title_with_year = "";
    public String url = "";
    public String image_url = "";
    public String server = "drama";

    public boolean equals(Object obj) {
        return this.url.equals(((Drama) obj).url);
    }

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

    public Movie toMovie() {
        Movie movie = new Movie();
        movie.setTitle(this.title);
        movie.setUrl(this.url);
        movie.setServer(this.server);
        movie.drama = true;
        movie.setImage_url(this.image_url);
        movie.setType(4);
        return movie;
    }
}
