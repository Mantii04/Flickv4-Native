package L0;

import A.i;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class d extends b {

    /* renamed from: a, reason: collision with root package name */
    public final long f1830a;

    /* renamed from: b, reason: collision with root package name */
    public final long f1831b;

    /* renamed from: c, reason: collision with root package name */
    public final List f1832c;

    public d(List list, long j7, long j8) {
        this.f1830a = j7;
        this.f1831b = j8;
        this.f1832c = Collections.unmodifiableList(list);
    }

    @Override // L0.b
    public String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 SpliceInsertCommand { programSplicePts=");
        sb.append(this.f1830a);
        sb.append(", programSplicePlaybackPositionUs= ");
        return i.n(sb, this.f1831b, " }");
    }
}
