package com.google.firebase.sessions.settings;

import Q5.b;
import u5.C1711j;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public interface SettingsProvider {

    public static final class DefaultImpls {
        public static boolean isSettingsStale(SettingsProvider settingsProvider) {
            return false;
        }

        public static Object updateSettings(SettingsProvider settingsProvider, InterfaceC1944c interfaceC1944c) {
            return C1711j.f20329a;
        }
    }

    Double getSamplingRate();

    Boolean getSessionEnabled();

    /* renamed from: getSessionRestartTimeout-FghU774 */
    b mo77getSessionRestartTimeoutFghU774();

    boolean isSettingsStale();

    Object updateSettings(InterfaceC1944c interfaceC1944c);
}
