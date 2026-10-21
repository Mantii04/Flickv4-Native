package c1;

import androidx.media3.common.util.TimestampAdjuster;
import v0.AbstractC1732p;
import v0.C1726j;

/* renamed from: c1.F, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0676F extends AbstractC1732p {
    public C0676F(TimestampAdjuster timestampAdjuster, long j7, long j8) {
        super(new C1726j(), new C0675E(timestampAdjuster), j7, 0L, j7 + 1, 0L, j8, 188L, 1000);
    }

    public static int a(int i2, byte[] bArr) {
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }
}
