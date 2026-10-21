package Q0;

import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import v0.F;
import v0.r0;

/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: b, reason: collision with root package name */
    public r0 f2783b;

    /* renamed from: c, reason: collision with root package name */
    public F f2784c;

    /* renamed from: d, reason: collision with root package name */
    public h f2785d;

    /* renamed from: e, reason: collision with root package name */
    public long f2786e;

    /* renamed from: f, reason: collision with root package name */
    public long f2787f;

    /* renamed from: g, reason: collision with root package name */
    public long f2788g;

    /* renamed from: h, reason: collision with root package name */
    public int f2789h;

    /* renamed from: i, reason: collision with root package name */
    public int f2790i;

    /* renamed from: k, reason: collision with root package name */
    public long f2792k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f2793l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f2794m;

    /* renamed from: a, reason: collision with root package name */
    public final f f2782a = new f();

    /* renamed from: j, reason: collision with root package name */
    public j f2791j = new j();

    public long convertGranuleToTime(long j7) {
        return (j7 * 1000000) / this.f2790i;
    }

    public long convertTimeToGranule(long j7) {
        return (this.f2790i * j7) / 1000000;
    }

    public void onSeekEnd(long j7) {
        this.f2788g = j7;
    }

    public abstract long preparePayload(ParsableByteArray parsableByteArray);

    public abstract boolean readHeaders(ParsableByteArray parsableByteArray, long j7, j jVar) throws IOException;

    public void reset(boolean z6) {
        if (z6) {
            this.f2791j = new j();
            this.f2787f = 0L;
            this.f2789h = 0;
        } else {
            this.f2789h = 1;
        }
        this.f2786e = -1L;
        this.f2788g = 0L;
    }
}
