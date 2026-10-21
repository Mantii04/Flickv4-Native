package flix.com.vision.models.adult;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public class AdultVideo {
    public String duration;
    public String img_url;
    public ArrayList<AdultLink> links;
    public String resolution;
    public String title;
    public String url;

    public boolean isMultilink() {
        ArrayList<AdultLink> arrayList = this.links;
        return arrayList != null && arrayList.size() > 1;
    }
}
