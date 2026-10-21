package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;
import java.util.Comparator;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Comparator {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13268b;

    public /* synthetic */ c(int i2) {
        this.f13268b = i2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$static$1;
        int lambda$getSortedCustomAttributes$0;
        switch (this.f13268b) {
            case 0:
                lambda$static$1 = CrashlyticsAppQualitySessionsStore.lambda$static$1((File) obj, (File) obj2);
                return lambda$static$1;
            default:
                lambda$getSortedCustomAttributes$0 = SessionReportingCoordinator.lambda$getSortedCustomAttributes$0((CrashlyticsReport.CustomAttribute) obj, (CrashlyticsReport.CustomAttribute) obj2);
                return lambda$getSortedCustomAttributes$0;
        }
    }
}
