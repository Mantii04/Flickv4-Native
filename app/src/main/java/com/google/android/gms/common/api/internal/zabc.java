package com.google.android.gms.common.api.internal;

import android.os.Message;
import android.util.Log;

/* loaded from: classes.dex */
final class zabc extends com.google.android.gms.internal.base.zaq {
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 1) {
            int i7 = zabe.f10710c;
            throw null;
        }
        if (i2 == 2) {
            int i8 = zabe.f10710c;
            throw null;
        }
        StringBuilder sb = new StringBuilder(31);
        sb.append("Unknown message id: ");
        sb.append(i2);
        Log.w("GoogleApiClientImpl", sb.toString());
    }
}
