package b1;

import P3.v;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* renamed from: b1.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0640l implements S0.i {

    /* renamed from: b, reason: collision with root package name */
    public final List f8389b;

    /* renamed from: e, reason: collision with root package name */
    public final long[] f8390e;

    /* renamed from: f, reason: collision with root package name */
    public final long[] f8391f;

    public C0640l(List<C0632d> list) {
        this.f8389b = Collections.unmodifiableList(new ArrayList(list));
        this.f8390e = new long[list.size() * 2];
        for (int i2 = 0; i2 < list.size(); i2++) {
            C0632d c0632d = list.get(i2);
            int i7 = i2 * 2;
            long[] jArr = this.f8390e;
            jArr[i7] = c0632d.f8360b;
            jArr[i7 + 1] = c0632d.f8361c;
        }
        long[] jArr2 = this.f8390e;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f8391f = copyOf;
        Arrays.sort(copyOf);
    }

    @Override // S0.i
    public List<Cue> getCues(long j7) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i2 = 0;
        while (true) {
            List list = this.f8389b;
            if (i2 >= list.size()) {
                break;
            }
            int i7 = i2 * 2;
            long[] jArr = this.f8390e;
            if (jArr[i7] <= j7 && j7 < jArr[i7 + 1]) {
                C0632d c0632d = (C0632d) list.get(i2);
                Cue cue = c0632d.f8359a;
                if (cue.line == -3.4028235E38f) {
                    arrayList2.add(c0632d);
                } else {
                    arrayList.add(cue);
                }
            }
            i2++;
        }
        Collections.sort(arrayList2, new J.c(7));
        for (int i8 = 0; i8 < arrayList2.size(); i8++) {
            arrayList.add(((C0632d) arrayList2.get(i8)).f8359a.buildUpon().setLine((-1) - i8, 1).build());
        }
        return arrayList;
    }

    @Override // S0.i
    public long getEventTime(int i2) {
        v.checkArgument(i2 >= 0);
        long[] jArr = this.f8391f;
        v.checkArgument(i2 < jArr.length);
        return jArr[i2];
    }

    @Override // S0.i
    public int getEventTimeCount() {
        return this.f8391f.length;
    }

    @Override // S0.i
    public int getNextEventTimeIndex(long j7) {
        long[] jArr = this.f8391f;
        int binarySearchCeil = Util.binarySearchCeil(jArr, j7, false, false);
        if (binarySearchCeil < jArr.length) {
            return binarySearchCeil;
        }
        return -1;
    }
}
