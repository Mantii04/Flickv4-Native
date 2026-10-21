package com.google.firebase.platforminfo;

import u5.C1705d;

/* loaded from: classes2.dex */
public final class KotlinDetector {
    private KotlinDetector() {
    }

    public static String detectVersion() {
        try {
            return C1705d.f20323m.toString();
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }
}
