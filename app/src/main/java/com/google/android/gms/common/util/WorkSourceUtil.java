package com.google.android.gms.common.util;

import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes.dex */
public class WorkSourceUtil {
    static {
        Class<?> cls = Integer.TYPE;
        Process.myUid();
        try {
            WorkSource.class.getMethod("add", cls);
        } catch (Exception unused) {
        }
        if (PlatformVersion.isAtLeastJellyBeanMR2()) {
            try {
                WorkSource.class.getMethod("add", cls, String.class);
            } catch (Exception unused2) {
            }
        }
        try {
            WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception unused3) {
        }
        try {
            WorkSource.class.getMethod("get", cls);
        } catch (Exception unused4) {
        }
        if (PlatformVersion.isAtLeastJellyBeanMR2()) {
            try {
                WorkSource.class.getMethod("getName", cls);
            } catch (Exception unused5) {
            }
        }
        if (PlatformVersion.isAtLeastP()) {
            try {
                WorkSource.class.getMethod("createWorkChain", new Class[0]);
            } catch (Exception e3) {
                Log.w("WorkSourceUtil", "Missing WorkChain API createWorkChain", e3);
            }
        }
        if (PlatformVersion.isAtLeastP()) {
            try {
                Class.forName("android.os.WorkSource$WorkChain").getMethod("addNode", cls, String.class);
            } catch (Exception e7) {
                Log.w("WorkSourceUtil", "Missing WorkChain class", e7);
            }
        }
        if (PlatformVersion.isAtLeastP()) {
            try {
                WorkSource.class.getMethod("isEmpty", new Class[0]).setAccessible(true);
            } catch (Exception unused6) {
            }
        }
    }

    private WorkSourceUtil() {
    }
}
