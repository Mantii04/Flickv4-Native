package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.apps.common.proguard.SideEffectFree;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.atomic.AtomicBoolean;

@KeepForSdk
/* loaded from: classes.dex */
public final class DeviceProperties {

    /* renamed from: a, reason: collision with root package name */
    public static Boolean f11038a;

    /* renamed from: b, reason: collision with root package name */
    public static Boolean f11039b;

    /* renamed from: c, reason: collision with root package name */
    public static Boolean f11040c;

    /* renamed from: d, reason: collision with root package name */
    public static Boolean f11041d;

    private DeviceProperties() {
    }

    @KeepForSdk
    public static boolean isAuto(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f11041d == null) {
            boolean z6 = false;
            if (PlatformVersion.isAtLeastO() && packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                z6 = true;
            }
            f11041d = Boolean.valueOf(z6);
        }
        return f11041d.booleanValue();
    }

    @KeepForSdk
    public static boolean isUserBuild() {
        AtomicBoolean atomicBoolean = GooglePlayServicesUtilLight.f10567a;
        return "user".equals(Build.TYPE);
    }

    @SideEffectFree
    @KeepForSdk
    @TargetApi(20)
    public static boolean isWearable(Context context) {
        return zzd(context.getPackageManager());
    }

    @KeepForSdk
    @TargetApi(26)
    public static boolean isWearableWithoutPlayStore(Context context) {
        if (isWearable(context) && !PlatformVersion.isAtLeastN()) {
            return true;
        }
        if (zza(context)) {
            return !PlatformVersion.isAtLeastO() || PlatformVersion.isAtLeastR();
        }
        return false;
    }

    @TargetApi(21)
    public static boolean zza(Context context) {
        if (f11039b == null) {
            boolean z6 = false;
            if (PlatformVersion.isAtLeastLollipop() && context.getPackageManager().hasSystemFeature("cn.google")) {
                z6 = true;
            }
            f11039b = Boolean.valueOf(z6);
        }
        return f11039b.booleanValue();
    }

    public static boolean zzb(Context context) {
        if (f11040c == null) {
            boolean z6 = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot") && !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                z6 = false;
            }
            f11040c = Boolean.valueOf(z6);
        }
        return f11040c.booleanValue();
    }

    @SideEffectFree
    @TargetApi(20)
    public static boolean zzd(PackageManager packageManager) {
        if (f11038a == null) {
            boolean z6 = false;
            if (PlatformVersion.isAtLeastKitKatWatch() && packageManager.hasSystemFeature("android.hardware.type.watch")) {
                z6 = true;
            }
            f11038a = Boolean.valueOf(z6);
        }
        return f11038a.booleanValue();
    }
}
