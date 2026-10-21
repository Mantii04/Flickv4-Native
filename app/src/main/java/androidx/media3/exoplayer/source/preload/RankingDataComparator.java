package androidx.media3.exoplayer.source.preload;

import androidx.media3.common.util.UnstableApi;
import java.util.Comparator;

@UnstableApi
/* loaded from: classes.dex */
public interface RankingDataComparator<T> extends Comparator<T> {

    public interface InvalidationListener {
        void onRankingDataComparatorInvalidated();
    }

    void setInvalidationListener(InvalidationListener invalidationListener);
}
