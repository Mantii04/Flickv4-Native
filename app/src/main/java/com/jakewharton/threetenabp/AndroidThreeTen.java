package com.jakewharton.threetenabp;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
import org.threeten.bp.zone.ZoneRulesInitializer;

/* loaded from: classes2.dex */
public final class AndroidThreeTen {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f13314a = new AtomicBoolean();

    private AndroidThreeTen() {
        throw new AssertionError();
    }

    public static void init(Context context) {
        init(context, "org/threeten/bp/TZDB.dat");
    }

    public static void init(Context context, String str) {
        if (f13314a.getAndSet(true)) {
            return;
        }
        ZoneRulesInitializer.setInitializer(new AssetsZoneRulesInitializer(context, str));
    }
}
