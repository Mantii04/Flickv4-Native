package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements ListenerSet.Event, Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LoadEventInfo f7260b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MediaLoadData f7261e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ IOException f7262f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f7263j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ Object f7264m;

    public /* synthetic */ k(Object obj, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z6) {
        this.f7264m = obj;
        this.f7260b = loadEventInfo;
        this.f7261e = mediaLoadData;
        this.f7262f = iOException;
        this.f7263j = z6;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        MediaSourceEventListener.EventDispatcher eventDispatcher = (MediaSourceEventListener.EventDispatcher) this.f7264m;
        MediaLoadData mediaLoadData = this.f7261e;
        IOException iOException = this.f7262f;
        eventDispatcher.lambda$loadError$3(this.f7260b, mediaLoadData, iOException, this.f7263j, (MediaSourceEventListener) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onLoadError((AnalyticsListener.EventTime) this.f7264m, this.f7260b, this.f7261e, this.f7262f, this.f7263j);
    }
}
