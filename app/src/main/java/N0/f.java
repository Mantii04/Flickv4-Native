package N0;

import android.util.SparseArray;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import java.util.Arrays;
import java.util.List;
import v0.d0;
import v0.e0;
import v0.h0;
import v0.o0;
import v0.r;

/* loaded from: classes.dex */
public final class f implements o0 {

    /* renamed from: a, reason: collision with root package name */
    public final r f2158a;

    /* renamed from: b, reason: collision with root package name */
    public final SparseArray f2159b;

    /* renamed from: c, reason: collision with root package name */
    public final long f2160c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2161d;

    public f(SparseArray<List<e>> sparseArray, long j7, int i2, long j8, long j9) {
        r rVar;
        int i7;
        this.f2159b = sparseArray;
        this.f2160c = j7;
        this.f2161d = i2;
        List<e> list = sparseArray.get(i2);
        if (list == null || list.isEmpty()) {
            rVar = null;
        } else {
            int size = list.size();
            int[] iArr = new int[size];
            long[] jArr = new long[size];
            long[] jArr2 = new long[size];
            long[] jArr3 = new long[size];
            int i8 = 0;
            for (int i9 = 0; i9 < size; i9++) {
                e eVar = list.get(i9);
                jArr3[i9] = eVar.f2155b;
                jArr[i9] = eVar.f2156e;
            }
            while (true) {
                i7 = size - 1;
                if (i8 >= i7) {
                    break;
                }
                int i10 = i8 + 1;
                iArr[i8] = (int) (jArr[i10] - jArr[i8]);
                jArr2[i8] = jArr3[i10] - jArr3[i8];
                i8 = i10;
            }
            int i11 = i7;
            while (i11 > 0 && jArr3[i11] >= j7) {
                i11--;
            }
            iArr[i11] = (int) ((j8 + j9) - jArr[i11]);
            jArr2[i11] = j7 - jArr3[i11];
            if (i11 < i7) {
                Log.w("MatroskaExtractor", "Discarding trailing cue points with timestamps greater than total duration.");
                int i12 = i11 + 1;
                iArr = Arrays.copyOf(iArr, i12);
                jArr = Arrays.copyOf(jArr, i12);
                jArr2 = Arrays.copyOf(jArr2, i12);
                jArr3 = Arrays.copyOf(jArr3, i12);
            }
            rVar = new r(iArr, jArr, jArr2, jArr3);
        }
        this.f2158a = rVar;
    }

    public r getChunkIndex() {
        return this.f2158a;
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f2160c;
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        r rVar = this.f2158a;
        return rVar != null ? rVar.getSeekPoints(j7) : new e0(h0.f20473c);
    }

    @Override // v0.g0
    public final /* synthetic */ boolean isEstimated() {
        return d0.a(this);
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return isSeekable(this.f2161d);
    }

    @Override // v0.o0
    public boolean isSeekable(int i2) {
        List list = (List) this.f2159b.get(i2);
        return (list == null || list.isEmpty()) ? false : true;
    }

    @Override // v0.o0
    public e0 getSeekPoints(long j7, int i2) {
        int i7;
        int i8;
        SparseArray sparseArray = this.f2159b;
        List list = (List) sparseArray.get(i2);
        if ((list == null || list.isEmpty()) && i2 != (i7 = this.f2161d)) {
            list = (List) sparseArray.get(i7);
        }
        if (list != null && !list.isEmpty()) {
            int binarySearchFloor = Util.binarySearchFloor((List<? extends Comparable<? super e>>) list, new e(j7, -1L, -1L), true, false);
            if (binarySearchFloor != -1) {
                e eVar = (e) list.get(binarySearchFloor);
                h0 h0Var = new h0(eVar.f2155b, eVar.f2156e);
                if (eVar.f2155b < j7 && (i8 = binarySearchFloor + 1) < list.size()) {
                    e eVar2 = (e) list.get(i8);
                    return new e0(h0Var, new h0(eVar2.f2155b, eVar2.f2156e));
                }
                return new e0(h0Var);
            }
            e eVar3 = (e) list.get(0);
            return new e0(new h0(eVar3.f2155b, eVar3.f2156e));
        }
        return new e0(h0.f20473c);
    }
}
