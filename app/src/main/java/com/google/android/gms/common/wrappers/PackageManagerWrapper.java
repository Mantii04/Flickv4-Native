package com.google.android.gms.common.wrappers;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;

@KeepForSdk
/* loaded from: classes.dex */
public class PackageManagerWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final Context f11056a;

    public PackageManagerWrapper(Context context) {
        this.f11056a = context;
    }

    @KeepForSdk
    public int checkCallingOrSelfPermission(String str) {
        return this.f11056a.checkCallingOrSelfPermission(str);
    }

    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public ApplicationInfo getApplicationInfo(String str, int i2) throws PackageManager.NameNotFoundException {
        return this.f11056a.getPackageManager().getApplicationInfo(str, i2);
    }

    @KeepForSdk
    public CharSequence getApplicationLabel(String str) throws PackageManager.NameNotFoundException {
        Context context = this.f11056a;
        return context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(str, 0));
    }

    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public PackageInfo getPackageInfo(String str, int i2) throws PackageManager.NameNotFoundException {
        return this.f11056a.getPackageManager().getPackageInfo(str, i2);
    }

    @KeepForSdk
    public boolean isCallerInstantApp() {
        String nameForUid;
        boolean isInstantApp;
        int callingUid = Binder.getCallingUid();
        int myUid = Process.myUid();
        Context context = this.f11056a;
        if (callingUid == myUid) {
            return InstantApps.isInstantApp(context);
        }
        if (!PlatformVersion.isAtLeastO() || (nameForUid = context.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        isInstantApp = context.getPackageManager().isInstantApp(nameForUid);
        return isInstantApp;
    }

    @TargetApi(19)
    public final boolean zza(int i2, String str) {
        boolean isAtLeastKitKat = PlatformVersion.isAtLeastKitKat();
        Context context = this.f11056a;
        if (isAtLeastKitKat) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
                if (appOpsManager == null) {
                    throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
                }
                appOpsManager.checkPackage(i2, str);
                return true;
            } catch (SecurityException unused) {
                return false;
            }
        }
        String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
        if (str != null && packagesForUid != null) {
            for (String str2 : packagesForUid) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }
}
