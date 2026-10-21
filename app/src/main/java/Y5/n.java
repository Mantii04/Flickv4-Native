package Y5;

import W5.H;
import W5.J;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public abstract class n {

    /* renamed from: a, reason: collision with root package name */
    public static final String f4427a = H.systemProp("kotlinx.coroutines.scheduler.default.name", "DefaultDispatcher");

    /* renamed from: b, reason: collision with root package name */
    public static final long f4428b;

    /* renamed from: c, reason: collision with root package name */
    public static final int f4429c;

    /* renamed from: d, reason: collision with root package name */
    public static final int f4430d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f4431e;

    /* renamed from: f, reason: collision with root package name */
    public static final g f4432f;

    /* renamed from: g, reason: collision with root package name */
    public static final l f4433g;

    /* renamed from: h, reason: collision with root package name */
    public static final l f4434h;

    static {
        long systemProp$default;
        int systemProp$default2;
        int systemProp$default3;
        long systemProp$default4;
        systemProp$default = J.systemProp$default("kotlinx.coroutines.scheduler.resolution.ns", SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US, 0L, 0L, 12, (Object) null);
        f4428b = systemProp$default;
        systemProp$default2 = J.systemProp$default("kotlinx.coroutines.scheduler.core.pool.size", M5.g.coerceAtLeast(H.getAVAILABLE_PROCESSORS(), 2), 1, 0, 8, (Object) null);
        f4429c = systemProp$default2;
        systemProp$default3 = J.systemProp$default("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4, (Object) null);
        f4430d = systemProp$default3;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        systemProp$default4 = J.systemProp$default("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 0L, 0L, 12, (Object) null);
        f4431e = timeUnit.toNanos(systemProp$default4);
        f4432f = g.f4421a;
        f4433g = new l(0);
        f4434h = new l(1);
    }
}
