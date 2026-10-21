package androidx.media3.common.text;

import P0.y;
import Q3.C0248s;
import android.os.Bundle;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.collect.G;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class CueGroup {
    private static final G CUES_PRIORITY_COMPARATOR = G.natural().onResultOf(new y(20));

    @UnstableApi
    public static final CueGroup EMPTY_TIME_ZERO = new CueGroup(ImmutableList.of(), 0);
    private static final String FIELD_CUES = Util.intToStringMaxRadix(0);
    private static final String FIELD_PRESENTATION_TIME_US = Util.intToStringMaxRadix(1);
    public final ImmutableList<Cue> cues;

    @UnstableApi
    public final long presentationTimeUs;

    @UnstableApi
    public CueGroup(List<Cue> list, long j7) {
        this.cues = ImmutableList.sortedCopyOf(CUES_PRIORITY_COMPARATOR, list);
        this.presentationTimeUs = j7;
    }

    private static ImmutableList<Cue> filterOutBitmapCues(List<Cue> list) {
        C0248s builder = ImmutableList.builder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (list.get(i2).bitmap == null) {
                builder.add((Object) list.get(i2));
            }
        }
        return builder.build();
    }

    @UnstableApi
    public static CueGroup fromBundle(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_CUES);
        return new CueGroup(parcelableArrayList == null ? ImmutableList.of() : BundleCollectionUtil.fromBundleList(new y(21), parcelableArrayList), bundle.getLong(FIELD_PRESENTATION_TIME_US));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$static$0(Cue cue) {
        return Integer.valueOf(cue.zIndex);
    }

    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(FIELD_CUES, BundleCollectionUtil.toBundleArrayList(filterOutBitmapCues(this.cues), new y(22)));
        bundle.putLong(FIELD_PRESENTATION_TIME_US, this.presentationTimeUs);
        return bundle;
    }
}
