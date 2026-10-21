package T0;

import P3.v;
import androidx.media3.common.text.Cue;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class k implements S0.i {

    /* renamed from: b, reason: collision with root package name */
    public final List f3523b;

    public k(List<Cue> list) {
        this.f3523b = list;
    }

    @Override // S0.i
    public List<Cue> getCues(long j7) {
        return j7 >= 0 ? this.f3523b : Collections.EMPTY_LIST;
    }

    @Override // S0.i
    public long getEventTime(int i2) {
        v.checkArgument(i2 == 0);
        return 0L;
    }

    @Override // S0.i
    public int getEventTimeCount() {
        return 1;
    }

    @Override // S0.i
    public int getNextEventTimeIndex(long j7) {
        return j7 < 0 ? 0 : -1;
    }
}
