package androidx.media3.exoplayer.source.preload;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.source.preload.RankingDataComparator;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements ListenerSet.Event, RankingDataComparator.InvalidationListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7510b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7511e;

    public /* synthetic */ b(Object obj, int i2) {
        this.f7510b = i2;
        this.f7511e = obj;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.f7510b) {
            case 0:
                ((PreloadManagerListener) obj).onError((PreloadException) this.f7511e);
                break;
            default:
                ((PreloadManagerListener) obj).onError((PreloadException) this.f7511e);
                break;
        }
    }

    @Override // androidx.media3.exoplayer.source.preload.RankingDataComparator.InvalidationListener
    public void onRankingDataComparatorInvalidated() {
        ((BasePreloadManager) this.f7511e).invalidate();
    }
}
