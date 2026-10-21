package P0;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import v0.r0;
import v0.s0;

/* loaded from: classes.dex */
public final class A {

    /* renamed from: a, reason: collision with root package name */
    public final J f2459a;

    /* renamed from: b, reason: collision with root package name */
    public final M f2460b;

    /* renamed from: c, reason: collision with root package name */
    public final r0 f2461c;

    /* renamed from: d, reason: collision with root package name */
    public final s0 f2462d;

    /* renamed from: e, reason: collision with root package name */
    public int f2463e;

    /* renamed from: f, reason: collision with root package name */
    public Format f2464f;

    public A(J j7, M m7, r0 r0Var) {
        this.f2459a = j7;
        this.f2460b = m7;
        this.f2461c = r0Var;
        this.f2462d = MimeTypes.AUDIO_TRUEHD.equals(j7.f2516g.sampleMimeType) ? new s0() : null;
    }
}
