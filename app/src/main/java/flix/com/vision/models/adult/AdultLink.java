package flix.com.vision.models.adult;

/* loaded from: classes2.dex */
public class AdultLink implements Comparable {
    public String label;
    public String quality;
    public String stream_url;

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return ((AdultLink) obj).stream_url.compareTo(this.stream_url);
    }
}
