package Z2;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$Flag;
import java.util.Set;

/* loaded from: classes.dex */
public final class b extends f {

    /* renamed from: a, reason: collision with root package name */
    public Long f4468a;

    /* renamed from: b, reason: collision with root package name */
    public Long f4469b;

    /* renamed from: c, reason: collision with root package name */
    public Set f4470c;

    @Override // Z2.f
    public g build() {
        String str = this.f4468a == null ? " delta" : "";
        if (this.f4469b == null) {
            str = str.concat(" maxAllowedDelay");
        }
        if (this.f4470c == null) {
            str = A.i.B(str, " flags");
        }
        if (str.isEmpty()) {
            return new c(this.f4468a.longValue(), this.f4469b.longValue(), this.f4470c);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    @Override // Z2.f
    public f setDelta(long j7) {
        this.f4468a = Long.valueOf(j7);
        return this;
    }

    @Override // Z2.f
    public f setFlags(Set<SchedulerConfig$Flag> set) {
        if (set == null) {
            throw new NullPointerException("Null flags");
        }
        this.f4470c = set;
        return this;
    }

    @Override // Z2.f
    public f setMaxAllowedDelay(long j7) {
        this.f4469b = Long.valueOf(j7);
        return this;
    }
}
