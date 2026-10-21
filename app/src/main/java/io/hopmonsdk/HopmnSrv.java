package io.hopmonsdk;

import android.util.Log;

/* loaded from: classes2.dex */
public abstract class HopmnSrv {
    static {
        try {
            System.loadLibrary("hopmn");
            Log.d("HopmnProxy", "Library loaded");
        } catch (UnsatisfiedLinkError e3) {
            Log.e("HopmnProxy", "Failed to load native library", e3);
        }
    }

    public static native void reload();

    public static native int start(String[] strArr);

    public static native void stop();
}
