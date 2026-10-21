package androidx.media3.exoplayer.dash;

import androidx.media3.exoplayer.dash.manifest.BaseUrl;
import java.util.Comparator;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compareBaseUrl;
        compareBaseUrl = BaseUrlExclusionList.compareBaseUrl((BaseUrl) obj, (BaseUrl) obj2);
        return compareBaseUrl;
    }
}
