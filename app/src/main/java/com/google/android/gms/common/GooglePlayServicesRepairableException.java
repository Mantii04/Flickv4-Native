package com.google.android.gms.common;

import android.content.Intent;

/* loaded from: classes.dex */
public class GooglePlayServicesRepairableException extends UserRecoverableException {

    /* renamed from: b, reason: collision with root package name */
    public final int f10566b;

    public GooglePlayServicesRepairableException(int i2, String str, Intent intent) {
        super(str, intent);
        this.f10566b = i2;
    }

    public int getConnectionStatusCode() {
        return this.f10566b;
    }
}
