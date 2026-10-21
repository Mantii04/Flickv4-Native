package flix.com.vision.models;

/* loaded from: classes2.dex */
public class Subtitle implements Comparable {
    public String encoding;
    public String label;
    public String language;
    public String path;
    public SUB_TYPE type = SUB_TYPE.OPENSUBTITLE;
    public String url;

    public enum SUB_TYPE {
        OPENSUBTITLE,
        SUBSCENE
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.url.equals(((Subtitle) obj).url) ? 0 : 1;
    }

    public boolean equals(Object obj) {
        return this.url.equals(((Subtitle) obj).url);
    }
}
