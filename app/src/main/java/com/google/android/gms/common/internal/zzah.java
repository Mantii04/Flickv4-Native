package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.wrappers.Wrappers;

/* loaded from: classes.dex */
public final class zzah {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f10940a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static boolean f10941b;

    /* renamed from: c, reason: collision with root package name */
    public static int f10942c;

    public static int zza(Context context) {
        Bundle bundle;
        synchronized (f10940a) {
            try {
                if (!f10941b) {
                    f10941b = true;
                    try {
                        bundle = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
                    } catch (PackageManager.NameNotFoundException e3) {
                        Log.wtf("MetadataValueReader", "This should never happen.", e3);
                    }
                    if (bundle != null) {
                        bundle.getString("com.google.app.id");
                        f10942c = bundle.getInt("com.google.android.gms.version");
                    }
                }
            } finally {
            }
        }
        return f10942c;
    }
}
