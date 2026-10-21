package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.FilenameFilter;

/* loaded from: classes2.dex */
public final /* synthetic */ class b implements FilenameFilter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13267a;

    public /* synthetic */ b(int i2) {
        this.f13267a = i2;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean lambda$static$0;
        boolean lambda$static$02;
        switch (this.f13267a) {
            case 0:
                lambda$static$0 = CrashlyticsAppQualitySessionsStore.lambda$static$0(file, str);
                return lambda$static$0;
            default:
                lambda$static$02 = CrashlyticsController.lambda$static$0(file, str);
                return lambda$static$02;
        }
    }
}
