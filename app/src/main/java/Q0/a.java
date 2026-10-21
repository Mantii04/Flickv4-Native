package Q0;

import androidx.media3.common.util.Util;
import java.math.BigInteger;
import v0.d0;
import v0.e0;
import v0.g0;
import v0.h0;

/* loaded from: classes.dex */
public final class a implements g0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f2743a;

    public a(b bVar) {
        this.f2743a = bVar;
    }

    @Override // v0.g0
    public long getDurationUs() {
        b bVar = this.f2743a;
        return bVar.f2747d.convertGranuleToTime(bVar.f2749f);
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        b bVar = this.f2743a;
        long convertTimeToGranule = bVar.f2747d.convertTimeToGranule(j7);
        return new e0(new h0(j7, Util.constrainValue((BigInteger.valueOf(convertTimeToGranule).multiply(BigInteger.valueOf(bVar.f2746c - bVar.f2745b)).divide(BigInteger.valueOf(bVar.f2749f)).longValue() + bVar.f2745b) - 30000, bVar.f2745b, bVar.f2746c - 1)));
    }

    @Override // v0.g0
    public final /* synthetic */ boolean isEstimated() {
        return d0.a(this);
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return true;
    }
}
