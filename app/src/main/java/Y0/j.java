package Y0;

import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Util;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class j implements S0.i {

    /* renamed from: b, reason: collision with root package name */
    public final c f4331b;

    /* renamed from: e, reason: collision with root package name */
    public final long[] f4332e;

    /* renamed from: f, reason: collision with root package name */
    public final Map f4333f;

    /* renamed from: j, reason: collision with root package name */
    public final Map f4334j;

    /* renamed from: m, reason: collision with root package name */
    public final Map f4335m;

    public j(c cVar, Map<String, i> map, Map<String, g> map2, Map<String, String> map3) {
        this.f4331b = cVar;
        this.f4334j = map2;
        this.f4335m = map3;
        this.f4333f = map != null ? Collections.unmodifiableMap(map) : Collections.EMPTY_MAP;
        this.f4332e = cVar.getEventTimesUs();
    }

    @Override // S0.i
    public List<Cue> getCues(long j7) {
        return this.f4331b.getCues(j7, this.f4333f, this.f4334j, this.f4335m);
    }

    @Override // S0.i
    public long getEventTime(int i2) {
        return this.f4332e[i2];
    }

    @Override // S0.i
    public int getEventTimeCount() {
        return this.f4332e.length;
    }

    @Override // S0.i
    public int getNextEventTimeIndex(long j7) {
        long[] jArr = this.f4332e;
        int binarySearchCeil = Util.binarySearchCeil(jArr, j7, false, false);
        if (binarySearchCeil < jArr.length) {
            return binarySearchCeil;
        }
        return -1;
    }
}
