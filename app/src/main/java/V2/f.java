package V2;

import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped$Reason;
import com.google.firebase.encoders.proto.Protobuf;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final long f3963a;

    /* renamed from: b, reason: collision with root package name */
    public final LogEventDropped$Reason f3964b;

    static {
        new e().build();
    }

    public f(long j7, LogEventDropped$Reason logEventDropped$Reason) {
        this.f3963a = j7;
        this.f3964b = logEventDropped$Reason;
    }

    public static e newBuilder() {
        return new e();
    }

    @Protobuf(tag = 1)
    public long getEventsDroppedCount() {
        return this.f3963a;
    }

    @Protobuf(tag = 3)
    public LogEventDropped$Reason getReason() {
        return this.f3964b;
    }
}
