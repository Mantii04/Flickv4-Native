package flix.com.vision.models;

/* loaded from: classes2.dex */
public class IntroDbResponse {
    public String imdb_id;
    public Segment intro;
    public Segment outro;
    public Segment recap;

    public static class Segment {
        public double confidence;
        public long end_ms;
        public long start_ms;
    }
}
