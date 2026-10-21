package com.google.firebase.sessions;

import Q5.d;
import android.os.SystemClock;
import kotlin.time.DurationUnit;

/* loaded from: classes2.dex */
public final class WallClock implements TimeProvider {
    public static final WallClock INSTANCE = new WallClock();
    private static final long US_PER_MILLIS = 1000;

    private WallClock() {
    }

    @Override // com.google.firebase.sessions.TimeProvider
    public long currentTimeUs() {
        return System.currentTimeMillis() * 1000;
    }

    @Override // com.google.firebase.sessions.TimeProvider
    /* renamed from: elapsedRealtime-UwyO8pc */
    public long mo76elapsedRealtimeUwyO8pc() {
        int i2 = Q5.b.f2996j;
        return d.toDuration(SystemClock.elapsedRealtime(), DurationUnit.f17470f);
    }
}
