package P0;

import androidx.media3.common.util.Util;
import v0.k0;

/* renamed from: P0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0212a implements k0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f2556a;

    /* renamed from: b, reason: collision with root package name */
    public final long f2557b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2558c;

    public C0212a(int i2, long j7, int i7) {
        this.f2556a = i2;
        this.f2557b = j7;
        this.f2558c = i7;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AtomSizeTooSmall{type=");
        sb.append(Util.toFourccString(this.f2556a));
        sb.append(", size=");
        sb.append(this.f2557b);
        sb.append(", minHeaderSize=");
        return A.i.m(sb, this.f2558c, "}");
    }
}
