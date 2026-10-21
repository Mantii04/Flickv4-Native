package v0;

import androidx.media3.common.util.LongArray;
import androidx.media3.common.util.Util;

/* loaded from: classes.dex */
public final class X implements g0 {

    /* renamed from: a, reason: collision with root package name */
    public final LongArray f20411a;

    /* renamed from: b, reason: collision with root package name */
    public final LongArray f20412b;

    /* renamed from: c, reason: collision with root package name */
    public long f20413c;

    public X(long[] jArr, long[] jArr2, long j7) {
        P3.v.checkArgument(jArr.length == jArr2.length);
        int length = jArr2.length;
        if (length <= 0 || jArr2[0] <= 0) {
            this.f20411a = new LongArray(length);
            this.f20412b = new LongArray(length);
        } else {
            int i2 = length + 1;
            LongArray longArray = new LongArray(i2);
            this.f20411a = longArray;
            LongArray longArray2 = new LongArray(i2);
            this.f20412b = longArray2;
            longArray.add(0L);
            longArray2.add(0L);
        }
        this.f20411a.addAll(jArr);
        this.f20412b.addAll(jArr2);
        this.f20413c = j7;
    }

    public void addSeekPoint(long j7, long j8) {
        LongArray longArray = this.f20412b;
        int size = longArray.size();
        LongArray longArray2 = this.f20411a;
        if (size == 0 && j7 > 0) {
            longArray2.add(0L);
            longArray.add(0L);
        }
        longArray2.add(j8);
        longArray.add(j7);
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f20413c;
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        LongArray longArray = this.f20412b;
        if (longArray.size() == 0) {
            return new e0(h0.f20473c);
        }
        int binarySearchFloor = Util.binarySearchFloor(longArray, j7, true, true);
        long j8 = longArray.get(binarySearchFloor);
        LongArray longArray2 = this.f20411a;
        h0 h0Var = new h0(j8, longArray2.get(binarySearchFloor));
        if (h0Var.f20474a == j7 || binarySearchFloor == longArray.size() - 1) {
            return new e0(h0Var);
        }
        int i2 = binarySearchFloor + 1;
        return new e0(h0Var, new h0(longArray.get(i2), longArray2.get(i2)));
    }

    public long getTimeUs(long j7) {
        LongArray longArray = this.f20412b;
        return longArray.size() == 0 ? androidx.media3.common.C.TIME_UNSET : longArray.get(Util.binarySearchFloor(this.f20411a, j7, true, true));
    }

    @Override // v0.g0
    public final /* synthetic */ boolean isEstimated() {
        return d0.a(this);
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return this.f20412b.size() > 0;
    }

    public boolean isTimeUsInIndex(long j7, long j8) {
        LongArray longArray = this.f20412b;
        return longArray.size() != 0 && j7 - longArray.get(longArray.size() - 1) < j8;
    }

    public void setDurationUs(long j7) {
        this.f20413c = j7;
    }
}
