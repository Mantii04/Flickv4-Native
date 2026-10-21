package flix.com.vision.models;

import A.i;
import T4.f;
import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import com.google.gson.annotations.SerializedName;
import com.uwetrottmann.trakt5.TraktV2;
import java.io.Serializable;
import java.net.URI;
import java.text.DecimalFormat;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class Movie implements Serializable, Comparable {
    private static final long serialVersionUID = 12;
    public boolean anime;
    public String backdrop;
    public int backdrop_image_res_id;
    private String caption_link;
    public String certification;
    public long collectionId;
    public String collectionName;
    public int color;

    @SerializedName("backdrop_path")
    private String cover;
    public String created_by;
    public boolean drama;
    private int duration;
    private String genres;
    private String id;
    private String image_url;
    public String imdbID;
    public boolean is_title_logo_available;
    public String last_air_date;
    public String logoUrl;
    private long movieId;
    private String overview;
    private String production;
    public String rawReleaseDate;
    private long revenue;
    private int season_count;
    private String server_numer;
    private String stream_url;

    @SerializedName("poster_path")
    private String thumb;
    public String title_simple;
    public String writers;
    public ArrayList<Integer> genre_ids = new ArrayList<>();
    public String raw_release_date = null;
    public boolean is_released = true;
    public boolean isTrakt = false;
    private int type = 0;
    public String season = "";
    public boolean isFavorite = false;
    public String year = "";
    boolean isNSFK = false;
    public String server_code = "";
    private String server = "";
    private String cast = "";
    private String plot = "";
    private String info_url = "";
    private String quality = "";
    private String url = "";
    private String title = "";
    private String rating = "";
    public ArrayList<Season> seasons = new ArrayList<>();

    public boolean belongsToCollection() {
        return this.collectionId > 0;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.year.compareTo(((Movie) obj).year);
    }

    public boolean equals(Object obj) {
        try {
            return this.url.equals(((Movie) obj).url);
        } catch (Exception e3) {
            e3.printStackTrace();
            return false;
        }
    }

    public String getCast() {
        return this.cast;
    }

    public String getCover() {
        return this.cover;
    }

    public String getDomainName() {
        try {
            return new URI(this.url).getHost();
        } catch (Exception unused) {
            return null;
        }
    }

    public int getDuration() {
        return this.duration;
    }

    public String getGenres() {
        String str = this.genres;
        if (str != null && !str.isEmpty()) {
            return this.genres;
        }
        if (this.genre_ids.size() > 0) {
            for (int i2 = 0; i2 < this.genre_ids.size(); i2++) {
                String genre = f.getGenre(this.genre_ids.get(i2).intValue(), this.type);
                this.genres = i.o(new StringBuilder(), this.genres, genre);
                if (i2 < this.genre_ids.size() - 1 && genre != null && !genre.isEmpty()) {
                    if (i2 > 2) {
                        return this.genres;
                    }
                    this.genres = i.o(new StringBuilder(), this.genres, " · ");
                }
            }
        }
        return this.genres;
    }

    public String getGenres2() {
        String str = this.genres;
        if (str != null && !str.isEmpty()) {
            return this.genres;
        }
        if (this.genre_ids.size() > 0) {
            for (int i2 = 0; i2 < this.genre_ids.size(); i2++) {
                String genre = f.getGenre(this.genre_ids.get(i2).intValue(), this.type);
                this.genres = i.o(new StringBuilder(), this.genres, genre);
                if (i2 < this.genre_ids.size() - 1 && genre != null && !genre.isEmpty()) {
                    this.genres = i.o(new StringBuilder(), this.genres, ", ");
                }
            }
        }
        return this.genres;
    }

    public String getId() {
        return this.id;
    }

    public String getImage_url() {
        return this.image_url;
    }

    public String getImdbID() {
        return this.imdbID;
    }

    public String getInfo_url() {
        return this.info_url;
    }

    public long getMovieId() {
        String str;
        return ((!this.drama && !isAnime()) || (str = this.url) == null || this.title == null || this.image_url == null) ? this.movieId : this.image_url.length() + this.title.length() + str.length();
    }

    public String getOverview() {
        return this.overview;
    }

    public String getPlot() {
        return this.plot;
    }

    public String getProduction() {
        return this.production;
    }

    public String getQuality() {
        return this.quality;
    }

    public String getRating() {
        return this.rating;
    }

    public String getRevenue() {
        try {
            return new DecimalFormat("$###,###.###").format(this.revenue);
        } catch (Exception unused) {
            return i.n(new StringBuilder(), this.revenue, "");
        }
    }

    public String getSeason() {
        if (this.season == null) {
            this.season = "1";
        }
        return this.season;
    }

    public int getSeason_count() {
        return this.season_count;
    }

    public String getServer() {
        return this.server;
    }

    public String getServerNumberNew() {
        if (this.server_numer == null) {
            this.server_numer = "-1";
        }
        return this.server_numer;
    }

    public String getServerNumberOld() {
        String str = (this.server.equals("goseries") || this.server.equals("yes_series") || this.server.equals("solar_series")) ? "9" : "1";
        if (this.server.equals("hdo_series")) {
            str = "8";
        }
        if (this.server.equals("fmovies_series_io")) {
            str = "7";
        }
        if (this.server.equals("solar_st_series")) {
            str = "6";
        }
        if (this.server.equals("fmovies_io")) {
            str = TraktV2.API_VERSION;
        }
        if (this.server.equals("hdo_movies")) {
            str = "3";
        }
        if (this.server.equals("is_movies")) {
            str = "5";
        }
        if (this.server.equals("is_series")) {
            str = "10";
        }
        if (this.server.equals("gomovies") || this.server.equals("yes_movies") || this.server.equals("solar_movies")) {
            str = "4";
        }
        return this.server.equals("flenix") ? "0" : this.server.equals("solar_st_movies") ? "1" : str;
    }

    public String getSimpleNameClean() {
        return this.title;
    }

    public String getSimpleNameNormal() {
        return this.title;
    }

    public String getThumb() {
        return this.thumb;
    }

    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public String getYear() {
        return this.year;
    }

    public boolean isAnime() {
        if (this.url == null) {
            this.url = "";
        }
        if (this.server == null) {
            this.server = "";
        }
        return this.url.contains("9anime") || this.server.contains("anime");
    }

    public boolean isDrama() {
        return this.type == 4;
    }

    public boolean isNSFK() {
        return this.isNSFK;
    }

    public boolean isSeries() {
        return this.type == 1;
    }

    public void parseYearfromTitle() {
    }

    public boolean released() {
        String str;
        if (isSeries()) {
            return true;
        }
        return (!this.is_released || (str = this.year) == null || str.isEmpty()) ? false : true;
    }

    public void setCast(String str) {
        this.cast = str;
    }

    public void setCover(String str) {
        this.cover = str;
    }

    public void setDuration(int i2) {
        this.duration = i2;
    }

    public void setGenres(String str) {
        if (str != null && str.startsWith("|")) {
            str = str.substring(1);
        }
        this.genres = str.replace("|", ",");
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setImage_url(String str) {
        this.image_url = str;
    }

    public void setImdbID(String str) {
        this.imdbID = str;
    }

    public void setInfo_url(String str) {
        this.info_url = str;
    }

    public void setMovieId(long j7) {
        this.movieId = j7;
    }

    public void setNSFK(boolean z6) {
        this.isNSFK = z6;
    }

    public void setOverview(String str) {
        this.overview = str;
    }

    public void setPlot(String str) {
        this.plot = str;
    }

    public void setProduction(String str) {
        this.production = str;
    }

    public void setQuality(String str) {
        this.quality = str;
    }

    public void setRating(String str) {
        this.rating = str;
    }

    public void setRawReleaseDate(String str) {
        this.rawReleaseDate = str;
    }

    public void setRevenue(long j7) {
        this.revenue = j7;
    }

    public void setSeason_count(int i2) {
        this.season_count = i2;
    }

    public void setServer(String str) {
        this.server = str;
    }

    public void setServerNumberNew() {
        String str = this.server.equals("solar_st_movies") ? "1" : this.server.equals("fmovies_io") ? TraktV2.API_VERSION : "1";
        if (this.server.equals("flenix")) {
            str = "0";
        }
        if (this.server.equals("hdo_movies")) {
            str = "3";
        }
        if (this.server.equals("is_movies")) {
            str = "5";
        }
        if (this.server.equals("gomovies") || this.server.equals("yes_movies") || this.server.equals("solar_movies")) {
            str = "4";
        }
        if (this.server.equals("solar_st_series")) {
            str = "6";
        }
        if (this.server.equals("fmovies_series_io")) {
            str = "7";
        }
        if (this.server.equals("hdo_series")) {
            str = "8";
        }
        if (this.server.equals("is_series")) {
            str = "10";
        }
        if (this.server.equals("yes_series")) {
            str = "9";
        }
        this.server_numer = str;
    }

    public void setThumb(String str) {
        this.thumb = str;
    }

    public void setTitle(String str) {
        Spanned fromHtml;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                fromHtml = Html.fromHtml(str, 0);
                str = String.valueOf(fromHtml);
            } else {
                str = String.valueOf(Html.fromHtml(str));
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        this.title_simple = str.trim();
        this.title = str.trim();
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public Anime toAnime() {
        Anime anime = new Anime();
        anime.title = this.title;
        anime.url = this.url;
        anime.plot = this.plot;
        anime.server = this.server;
        anime.status = this.cast;
        anime.image_url = this.image_url;
        anime.score = this.rating;
        anime.date = this.quality;
        return anime;
    }
}
