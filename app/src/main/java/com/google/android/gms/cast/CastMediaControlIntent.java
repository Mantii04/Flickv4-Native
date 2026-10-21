package com.google.android.gms.cast;

import java.util.Collection;

/* loaded from: classes.dex */
public final class CastMediaControlIntent {
    private CastMediaControlIntent() {
    }

    public static String categoryForCast(String str) throws IllegalArgumentException {
        if (str != null) {
            return zzw.a(new zzw(str, null));
        }
        throw new IllegalArgumentException("applicationId cannot be null");
    }

    public static String categoryForCast(String str, Collection<String> collection) {
        if (str == null) {
            throw new IllegalArgumentException("applicationId cannot be null");
        }
        if (collection != null) {
            return zzw.a(new zzw(str, collection));
        }
        throw new IllegalArgumentException("namespaces cannot be null");
    }
}
