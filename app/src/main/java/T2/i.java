package T2;

import com.google.android.datatransport.runtime.backends.BackendResponse$Status;

/* loaded from: classes.dex */
public abstract class i {
    public static i fatalError() {
        return new c(BackendResponse$Status.f9497f, -1L);
    }

    public static i invalidPayload() {
        return new c(BackendResponse$Status.f9498j, -1L);
    }

    public static i ok(long j7) {
        return new c(BackendResponse$Status.f9495b, j7);
    }

    public static i transientError() {
        return new c(BackendResponse$Status.f9496e, -1L);
    }

    public abstract long getNextRequestWaitMillis();

    public abstract BackendResponse$Status getStatus();
}
