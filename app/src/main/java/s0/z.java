package s0;

import androidx.media3.common.C;
import androidx.media3.common.util.ParsableByteArray;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class z implements Comparable {

    /* renamed from: e, reason: collision with root package name */
    public long f19995e = C.TIME_UNSET;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f19994b = new ArrayList();

    public void init(long j7, ParsableByteArray parsableByteArray) {
        P3.v.checkArgument(j7 != C.TIME_UNSET);
        ArrayList arrayList = this.f19994b;
        P3.v.checkState(arrayList.isEmpty());
        this.f19995e = j7;
        arrayList.add(parsableByteArray);
    }

    @Override // java.lang.Comparable
    public int compareTo(z zVar) {
        return Long.compare(this.f19995e, zVar.f19995e);
    }
}
