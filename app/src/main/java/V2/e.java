package V2;

import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped$Reason;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public long f3961a = 0;

    /* renamed from: b, reason: collision with root package name */
    public LogEventDropped$Reason f3962b = LogEventDropped$Reason.REASON_UNKNOWN;

    public f build() {
        return new f(this.f3961a, this.f3962b);
    }

    public e setEventsDroppedCount(long j7) {
        this.f3961a = j7;
        return this;
    }

    public e setReason(LogEventDropped$Reason logEventDropped$Reason) {
        this.f3962b = logEventDropped$Reason;
        return this;
    }
}
