package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes2.dex */
final class zzms {

    /* renamed from: a, reason: collision with root package name */
    public final Clock f12126a;

    /* renamed from: b, reason: collision with root package name */
    public long f12127b;

    public zzms(Clock clock) {
        Preconditions.checkNotNull(clock);
        this.f12126a = clock;
    }

    public final void zza() {
        this.f12127b = 0L;
    }

    public final void zzb() {
        this.f12127b = this.f12126a.elapsedRealtime();
    }

    public final boolean zza(long j7) {
        return this.f12127b == 0 || this.f12126a.elapsedRealtime() - this.f12127b >= DateUtils.MILLIS_PER_HOUR;
    }
}
