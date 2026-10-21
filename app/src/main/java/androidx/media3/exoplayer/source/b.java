package androidx.media3.exoplayer.source;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Handler.Callback {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7482b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CompositeMediaSource f7483e;

    public /* synthetic */ b(CompositeMediaSource compositeMediaSource, int i2) {
        this.f7482b = i2;
        this.f7483e = compositeMediaSource;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean handleMessage;
        boolean handleMessage2;
        switch (this.f7482b) {
            case 0:
                handleMessage = ((ConcatenatingMediaSource) this.f7483e).handleMessage(message);
                return handleMessage;
            default:
                handleMessage2 = ((ConcatenatingMediaSource2) this.f7483e).handleMessage(message);
                return handleMessage2;
        }
    }
}
