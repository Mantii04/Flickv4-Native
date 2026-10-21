package com.google.android.gms.internal.cast;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzta extends IOException {
    public zzta() {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.");
    }

    public zzta(String str, Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(String.valueOf(str)), th);
    }

    public zzta(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
