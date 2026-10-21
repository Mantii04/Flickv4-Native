package com.google.firebase.sessions.settings;

import H5.p;
import R5.AbstractC0275h;
import R5.I;
import Y.d;
import androidx.datastore.preferences.core.PreferencesKt;
import b0.AbstractC0626c;
import b0.AbstractC0628e;
import b0.C0624a;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public final class SettingsCache {

    @Deprecated
    public static final String TAG = "SettingsCache";
    private final d dataStore;
    private SessionConfigs sessionConfigs;
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final C0624a SESSIONS_ENABLED = AbstractC0628e.booleanKey(LocalOverrideSettings.SESSIONS_ENABLED);

    @Deprecated
    private static final C0624a SAMPLING_RATE = AbstractC0628e.doubleKey(LocalOverrideSettings.SAMPLING_RATE);

    @Deprecated
    private static final C0624a RESTART_TIMEOUT_SECONDS = AbstractC0628e.intKey("firebase_sessions_restart_timeout");

    @Deprecated
    private static final C0624a CACHE_DURATION_SECONDS = AbstractC0628e.intKey("firebase_sessions_cache_duration");

    @Deprecated
    private static final C0624a CACHE_UPDATED_TIME = AbstractC0628e.longKey("firebase_sessions_cache_updated_time");

    @A5.d(c = "com.google.firebase.sessions.settings.SettingsCache$1", f = "SettingsCache.kt", l = {46}, m = "invokeSuspend")
    /* renamed from: com.google.firebase.sessions.settings.SettingsCache$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements p {
        Object L$0;
        int label;

        public AnonymousClass1(InterfaceC1944c interfaceC1944c) {
            super(2, interfaceC1944c);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
            return SettingsCache.this.new AnonymousClass1(interfaceC1944c);
        }

        @Override // H5.p
        public final Object invoke(I i2, InterfaceC1944c interfaceC1944c) {
            return ((AnonymousClass1) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            SettingsCache settingsCache;
            Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
            int i2 = this.label;
            if (i2 == 0) {
                b.throwOnFailure(obj);
                SettingsCache settingsCache2 = SettingsCache.this;
                U5.b data = settingsCache2.dataStore.getData();
                this.L$0 = settingsCache2;
                this.label = 1;
                Object first = U5.d.first(data, this);
                if (first == coroutine_suspended) {
                    return coroutine_suspended;
                }
                settingsCache = settingsCache2;
                obj = first;
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                settingsCache = (SettingsCache) this.L$0;
                b.throwOnFailure(obj);
            }
            settingsCache.updateSessionConfigs(((AbstractC0626c) obj).toPreferences());
            return C1711j.f20329a;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final C0624a getCACHE_DURATION_SECONDS() {
            return SettingsCache.CACHE_DURATION_SECONDS;
        }

        public final C0624a getCACHE_UPDATED_TIME() {
            return SettingsCache.CACHE_UPDATED_TIME;
        }

        public final C0624a getRESTART_TIMEOUT_SECONDS() {
            return SettingsCache.RESTART_TIMEOUT_SECONDS;
        }

        public final C0624a getSAMPLING_RATE() {
            return SettingsCache.SAMPLING_RATE;
        }

        public final C0624a getSESSIONS_ENABLED() {
            return SettingsCache.SESSIONS_ENABLED;
        }

        private Companion() {
        }
    }

    public SettingsCache(d dataStore) {
        j.checkNotNullParameter(dataStore, "dataStore");
        this.dataStore = dataStore;
        AbstractC0275h.runBlocking$default(null, new AnonymousClass1(null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(10:0|1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(3:18|19|(1:21))|11|12|13))|24|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0029, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0047, code lost:
    
        android.util.Log.w(com.google.firebase.sessions.settings.SettingsCache.TAG, "Failed to update cache config value: " + r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> java.lang.Object updateConfigValue(b0.C0624a r6, T r7, y5.InterfaceC1944c r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.google.firebase.sessions.settings.SettingsCache$updateConfigValue$1
            if (r0 == 0) goto L13
            r0 = r8
            com.google.firebase.sessions.settings.SettingsCache$updateConfigValue$1 r0 = (com.google.firebase.sessions.settings.SettingsCache$updateConfigValue$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.google.firebase.sessions.settings.SettingsCache$updateConfigValue$1 r0 = new com.google.firebase.sessions.settings.SettingsCache$updateConfigValue$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            kotlin.b.throwOnFailure(r8)     // Catch: java.io.IOException -> L29
            goto L5a
        L29:
            r6 = move-exception
            goto L47
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            kotlin.b.throwOnFailure(r8)
            Y.d r8 = r5.dataStore     // Catch: java.io.IOException -> L29
            com.google.firebase.sessions.settings.SettingsCache$updateConfigValue$2 r2 = new com.google.firebase.sessions.settings.SettingsCache$updateConfigValue$2     // Catch: java.io.IOException -> L29
            r4 = 0
            r2.<init>(r7, r6, r5, r4)     // Catch: java.io.IOException -> L29
            r0.label = r3     // Catch: java.io.IOException -> L29
            java.lang.Object r6 = androidx.datastore.preferences.core.PreferencesKt.edit(r8, r2, r0)     // Catch: java.io.IOException -> L29
            if (r6 != r1) goto L5a
            return r1
        L47:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r8 = "Failed to update cache config value: "
            r7.<init>(r8)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            java.lang.String r7 = "SettingsCache"
            android.util.Log.w(r7, r6)
        L5a:
            u5.j r6 = u5.C1711j.f20329a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.settings.SettingsCache.updateConfigValue(b0.a, java.lang.Object, y5.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSessionConfigs(AbstractC0626c abstractC0626c) {
        this.sessionConfigs = new SessionConfigs((Boolean) abstractC0626c.get(SESSIONS_ENABLED), (Double) abstractC0626c.get(SAMPLING_RATE), (Integer) abstractC0626c.get(RESTART_TIMEOUT_SECONDS), (Integer) abstractC0626c.get(CACHE_DURATION_SECONDS), (Long) abstractC0626c.get(CACHE_UPDATED_TIME));
    }

    public final boolean hasCacheExpired$com_google_firebase_firebase_sessions() {
        SessionConfigs sessionConfigs = this.sessionConfigs;
        SessionConfigs sessionConfigs2 = null;
        if (sessionConfigs == null) {
            j.throwUninitializedPropertyAccessException("sessionConfigs");
            sessionConfigs = null;
        }
        Long cacheUpdatedTime = sessionConfigs.getCacheUpdatedTime();
        SessionConfigs sessionConfigs3 = this.sessionConfigs;
        if (sessionConfigs3 == null) {
            j.throwUninitializedPropertyAccessException("sessionConfigs");
        } else {
            sessionConfigs2 = sessionConfigs3;
        }
        Integer cacheDuration = sessionConfigs2.getCacheDuration();
        return cacheUpdatedTime == null || cacheDuration == null || (System.currentTimeMillis() - cacheUpdatedTime.longValue()) / ((long) 1000) >= ((long) cacheDuration.intValue());
    }

    public final Object removeConfigs$com_google_firebase_firebase_sessions(InterfaceC1944c interfaceC1944c) {
        Object edit = PreferencesKt.edit(this.dataStore, new SettingsCache$removeConfigs$2(this, null), interfaceC1944c);
        return edit == AbstractC2008a.getCOROUTINE_SUSPENDED() ? edit : C1711j.f20329a;
    }

    public final Integer sessionRestartTimeout() {
        SessionConfigs sessionConfigs = this.sessionConfigs;
        if (sessionConfigs == null) {
            j.throwUninitializedPropertyAccessException("sessionConfigs");
            sessionConfigs = null;
        }
        return sessionConfigs.getSessionRestartTimeout();
    }

    public final Double sessionSamplingRate() {
        SessionConfigs sessionConfigs = this.sessionConfigs;
        if (sessionConfigs == null) {
            j.throwUninitializedPropertyAccessException("sessionConfigs");
            sessionConfigs = null;
        }
        return sessionConfigs.getSessionSamplingRate();
    }

    public final Boolean sessionsEnabled() {
        SessionConfigs sessionConfigs = this.sessionConfigs;
        if (sessionConfigs == null) {
            j.throwUninitializedPropertyAccessException("sessionConfigs");
            sessionConfigs = null;
        }
        return sessionConfigs.getSessionEnabled();
    }

    public final Object updateSamplingRate(Double d7, InterfaceC1944c interfaceC1944c) {
        Object updateConfigValue = updateConfigValue(SAMPLING_RATE, d7, interfaceC1944c);
        return updateConfigValue == AbstractC2008a.getCOROUTINE_SUSPENDED() ? updateConfigValue : C1711j.f20329a;
    }

    public final Object updateSessionCacheDuration(Integer num, InterfaceC1944c interfaceC1944c) {
        Object updateConfigValue = updateConfigValue(CACHE_DURATION_SECONDS, num, interfaceC1944c);
        return updateConfigValue == AbstractC2008a.getCOROUTINE_SUSPENDED() ? updateConfigValue : C1711j.f20329a;
    }

    public final Object updateSessionCacheUpdatedTime(Long l7, InterfaceC1944c interfaceC1944c) {
        Object updateConfigValue = updateConfigValue(CACHE_UPDATED_TIME, l7, interfaceC1944c);
        return updateConfigValue == AbstractC2008a.getCOROUTINE_SUSPENDED() ? updateConfigValue : C1711j.f20329a;
    }

    public final Object updateSessionRestartTimeout(Integer num, InterfaceC1944c interfaceC1944c) {
        Object updateConfigValue = updateConfigValue(RESTART_TIMEOUT_SECONDS, num, interfaceC1944c);
        return updateConfigValue == AbstractC2008a.getCOROUTINE_SUSPENDED() ? updateConfigValue : C1711j.f20329a;
    }

    public final Object updateSettingsEnabled(Boolean bool, InterfaceC1944c interfaceC1944c) {
        Object updateConfigValue = updateConfigValue(SESSIONS_ENABLED, bool, interfaceC1944c);
        return updateConfigValue == AbstractC2008a.getCOROUTINE_SUSPENDED() ? updateConfigValue : C1711j.f20329a;
    }
}
