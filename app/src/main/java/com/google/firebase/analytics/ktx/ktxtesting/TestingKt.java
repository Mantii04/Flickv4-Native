package com.google.firebase.analytics.ktx.ktxtesting;

import H5.a;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.analytics.ktx.AnalyticsKt;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class TestingKt {
    public static final void withAnalyticsForTest(FirebaseAnalytics analytics, a block) {
        j.checkNotNullParameter(analytics, "analytics");
        j.checkNotNullParameter(block, "block");
        synchronized (AnalyticsKt.getLOCK()) {
            FirebaseAnalytics analytics2 = AnalyticsKt.getANALYTICS();
            AnalyticsKt.setANALYTICS(analytics);
            try {
                block.invoke();
            } finally {
                AnalyticsKt.setANALYTICS(analytics2);
            }
        }
    }
}
