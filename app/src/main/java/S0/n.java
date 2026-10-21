package S0;

import P3.v;
import androidx.media3.common.text.Cue;
import java.util.List;
import u0.AbstractC1667h;

/* loaded from: classes.dex */
public abstract class n extends AbstractC1667h implements i {

    /* renamed from: b, reason: collision with root package name */
    public i f3272b;

    /* renamed from: e, reason: collision with root package name */
    public long f3273e;

    @Override // u0.AbstractC1667h, u0.AbstractC1660a
    public void clear() {
        super.clear();
        this.f3272b = null;
    }

    @Override // S0.i
    public List<Cue> getCues(long j7) {
        return ((i) v.checkNotNull(this.f3272b)).getCues(j7 - this.f3273e);
    }

    @Override // S0.i
    public long getEventTime(int i2) {
        return ((i) v.checkNotNull(this.f3272b)).getEventTime(i2) + this.f3273e;
    }

    @Override // S0.i
    public int getEventTimeCount() {
        return ((i) v.checkNotNull(this.f3272b)).getEventTimeCount();
    }

    @Override // S0.i
    public int getNextEventTimeIndex(long j7) {
        return ((i) v.checkNotNull(this.f3272b)).getNextEventTimeIndex(j7 - this.f3273e);
    }

    public void setContent(long j7, i iVar, long j8) {
        this.timeUs = j7;
        this.f3272b = iVar;
        if (j8 != Long.MAX_VALUE) {
            j7 = j8;
        }
        this.f3273e = j7;
    }
}
