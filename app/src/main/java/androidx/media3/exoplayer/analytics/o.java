package androidx.media3.exoplayer.analytics;

import androidx.media3.common.C;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements ListenerSet.Event, Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7276b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7277e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f7278f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f7279j;

    public /* synthetic */ o(AnalyticsListener.EventTime eventTime, int i2, long j7) {
        this.f7276b = 0;
        this.f7277e = eventTime;
        this.f7279j = i2;
        this.f7278f = j7;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        S0.c cVar = (S0.c) obj;
        S0.u uVar = (S0.u) this.f7277e;
        P3.v.checkNotNull(uVar.f3290i);
        byte[] encode = uVar.f3284c.encode(cVar.f3250a, cVar.f3252c);
        ParsableByteArray parsableByteArray = uVar.f3285d;
        parsableByteArray.reset(encode);
        uVar.f3282a.sampleData(parsableByteArray, encode.length);
        long j7 = cVar.f3251b;
        long j8 = this.f7278f;
        if (j7 == C.TIME_UNSET) {
            P3.v.checkState(uVar.f3290i.subsampleOffsetUs == Long.MAX_VALUE);
        } else {
            long j9 = uVar.f3290i.subsampleOffsetUs;
            j8 = j9 == Long.MAX_VALUE ? j8 + j7 : j7 + j9;
        }
        uVar.f3282a.sampleMetadata(j8, this.f7279j | 1, encode.length, 0, null);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7276b) {
            case 0:
                analyticsListener.onDroppedVideoFrames((AnalyticsListener.EventTime) this.f7277e, this.f7279j, this.f7278f);
                break;
            default:
                analyticsListener.onVideoFrameProcessingOffset((AnalyticsListener.EventTime) this.f7277e, this.f7278f, this.f7279j);
                break;
        }
    }

    public /* synthetic */ o(Object obj, long j7, int i2, int i7) {
        this.f7276b = i7;
        this.f7277e = obj;
        this.f7278f = j7;
        this.f7279j = i2;
    }
}
