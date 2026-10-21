package flix.com.vision.models;

/* loaded from: classes2.dex */
public class CastAction {
    public Action action;
    public String encoding;
    public String file;
    public String movie_title;
    public Subtitle sub;

    public enum Action {
        PLAY_MOVIE,
        SERVE_SUB,
        CLEAR_SUB_URL
    }
}
