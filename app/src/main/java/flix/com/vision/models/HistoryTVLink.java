package flix.com.vision.models;

/* loaded from: classes2.dex */
public class HistoryTVLink implements Comparable {
    public String name;
    public String type;
    public String url;

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return ((HistoryTVLink) obj).name.compareTo(this.name);
    }
}
