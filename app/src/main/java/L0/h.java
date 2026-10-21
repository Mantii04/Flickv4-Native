package L0;

import A.i;
import androidx.media3.common.C;
import androidx.media3.common.util.ParsableByteArray;

/* loaded from: classes.dex */
public final class h extends b {

    /* renamed from: a, reason: collision with root package name */
    public final long f1835a;

    /* renamed from: b, reason: collision with root package name */
    public final long f1836b;

    public h(long j7, long j8) {
        this.f1835a = j7;
        this.f1836b = j8;
    }

    public static long a(long j7, ParsableByteArray parsableByteArray) {
        long readUnsignedByte = parsableByteArray.readUnsignedByte();
        return (128 & readUnsignedByte) != 0 ? 8589934591L & ((((readUnsignedByte & 1) << 32) | parsableByteArray.readUnsignedInt()) + j7) : C.TIME_UNSET;
    }

    @Override // L0.b
    public String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 TimeSignalCommand { ptsTime=");
        sb.append(this.f1835a);
        sb.append(", playbackPositionUs= ");
        return i.n(sb, this.f1836b, " }");
    }
}
