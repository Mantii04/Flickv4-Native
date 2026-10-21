package com.google.firebase.sessions.settings;

import H5.l;
import J5.a;
import Y.d;
import Z.b;
import android.content.Context;
import android.util.Log;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate;
import b0.AbstractC0626c;
import b0.AbstractC0627d;
import com.google.firebase.Firebase;
import com.google.firebase.FirebaseKt;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.sessions.ApplicationInfo;
import com.google.firebase.sessions.ProcessDetailsProvider;
import com.google.firebase.sessions.SessionDataStoreConfigs;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import kotlin.time.DurationUnit;
import org.apache.commons.lang3.ClassUtils;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class SessionsSettings {
    private static final String TAG = "SessionsSettings";
    private final SettingsProvider localOverrideSettings;
    private final SettingsProvider remoteSettings;
    public static final Companion Companion = new Companion(null);
    private static final a dataStore$delegate = PreferenceDataStoreDelegateKt.preferencesDataStore$default(SessionDataStoreConfigs.INSTANCE.getSETTINGS_CONFIG_NAME(), new b(new l() { // from class: com.google.firebase.sessions.settings.SessionsSettings$Companion$dataStore$2
        @Override // H5.l
        public final AbstractC0626c invoke(CorruptionException ex) {
            j.checkNotNullParameter(ex, "ex");
            Log.w("SessionsSettings", "CorruptionException in settings DataStore in " + ProcessDetailsProvider.INSTANCE.getProcessName$com_google_firebase_firebase_sessions() + ClassUtils.PACKAGE_SEPARATOR_CHAR, ex);
            return AbstractC0627d.createEmpty();
        }
    }), null, null, 12, null);

    public static final class Companion {
        static final /* synthetic */ N5.l[] $$delegatedProperties = {kotlin.jvm.internal.l.property2(new PropertyReference2Impl(Companion.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final d getDataStore(Context context) {
            return (d) ((PreferenceDataStoreSingletonDelegate) SessionsSettings.dataStore$delegate).getValue((Object) context, $$delegatedProperties[0]);
        }

        public final SessionsSettings getInstance() {
            Object obj = FirebaseKt.getApp(Firebase.INSTANCE).get(SessionsSettings.class);
            j.checkNotNullExpressionValue(obj, "Firebase.app[SessionsSettings::class.java]");
            return (SessionsSettings) obj;
        }

        private Companion() {
        }
    }

    public SessionsSettings(SettingsProvider localOverrideSettings, SettingsProvider remoteSettings) {
        j.checkNotNullParameter(localOverrideSettings, "localOverrideSettings");
        j.checkNotNullParameter(remoteSettings, "remoteSettings");
        this.localOverrideSettings = localOverrideSettings;
        this.remoteSettings = remoteSettings;
    }

    private final boolean isValidSamplingRate(double d7) {
        return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE <= d7 && d7 <= 1.0d;
    }

    /* renamed from: isValidSessionRestartTimeout-LRDsOJo, reason: not valid java name */
    private final boolean m78isValidSessionRestartTimeoutLRDsOJo(long j7) {
        return Q5.b.m21isPositiveimpl(j7) && Q5.b.m18isFiniteimpl(j7);
    }

    public final double getSamplingRate() {
        Double samplingRate = this.localOverrideSettings.getSamplingRate();
        if (samplingRate != null) {
            double doubleValue = samplingRate.doubleValue();
            if (isValidSamplingRate(doubleValue)) {
                return doubleValue;
            }
        }
        Double samplingRate2 = this.remoteSettings.getSamplingRate();
        if (samplingRate2 == null) {
            return 1.0d;
        }
        double doubleValue2 = samplingRate2.doubleValue();
        if (isValidSamplingRate(doubleValue2)) {
            return doubleValue2;
        }
        return 1.0d;
    }

    /* renamed from: getSessionRestartTimeout-UwyO8pc, reason: not valid java name */
    public final long m79getSessionRestartTimeoutUwyO8pc() {
        Q5.b mo77getSessionRestartTimeoutFghU774 = this.localOverrideSettings.mo77getSessionRestartTimeoutFghU774();
        if (mo77getSessionRestartTimeoutFghU774 != null) {
            long m26unboximpl = mo77getSessionRestartTimeoutFghU774.m26unboximpl();
            if (m78isValidSessionRestartTimeoutLRDsOJo(m26unboximpl)) {
                return m26unboximpl;
            }
        }
        Q5.b mo77getSessionRestartTimeoutFghU7742 = this.remoteSettings.mo77getSessionRestartTimeoutFghU774();
        if (mo77getSessionRestartTimeoutFghU7742 != null) {
            long m26unboximpl2 = mo77getSessionRestartTimeoutFghU7742.m26unboximpl();
            if (m78isValidSessionRestartTimeoutLRDsOJo(m26unboximpl2)) {
                return m26unboximpl2;
            }
        }
        int i2 = Q5.b.f2996j;
        return Q5.d.toDuration(30, DurationUnit.f17472m);
    }

    public final boolean getSessionsEnabled() {
        Boolean sessionEnabled = this.localOverrideSettings.getSessionEnabled();
        if (sessionEnabled != null) {
            return sessionEnabled.booleanValue();
        }
        Boolean sessionEnabled2 = this.remoteSettings.getSessionEnabled();
        if (sessionEnabled2 != null) {
            return sessionEnabled2.booleanValue();
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
    
        if (r6.updateSettings(r0) != r1) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateSettings(y5.InterfaceC1944c r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.google.firebase.sessions.settings.SessionsSettings$updateSettings$1
            if (r0 == 0) goto L13
            r0 = r6
            com.google.firebase.sessions.settings.SessionsSettings$updateSettings$1 r0 = (com.google.firebase.sessions.settings.SessionsSettings$updateSettings$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.google.firebase.sessions.settings.SessionsSettings$updateSettings$1 r0 = new com.google.firebase.sessions.settings.SessionsSettings$updateSettings$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.b.throwOnFailure(r6)
            goto L5b
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            java.lang.Object r2 = r0.L$0
            com.google.firebase.sessions.settings.SessionsSettings r2 = (com.google.firebase.sessions.settings.SessionsSettings) r2
            kotlin.b.throwOnFailure(r6)
            goto L4d
        L3c:
            kotlin.b.throwOnFailure(r6)
            com.google.firebase.sessions.settings.SettingsProvider r6 = r5.localOverrideSettings
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r6 = r6.updateSettings(r0)
            if (r6 != r1) goto L4c
            goto L5a
        L4c:
            r2 = r5
        L4d:
            com.google.firebase.sessions.settings.SettingsProvider r6 = r2.remoteSettings
            r2 = 0
            r0.L$0 = r2
            r0.label = r3
            java.lang.Object r6 = r6.updateSettings(r0)
            if (r6 != r1) goto L5b
        L5a:
            return r1
        L5b:
            u5.j r6 = u5.C1711j.f20329a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.settings.SessionsSettings.updateSettings(y5.c):java.lang.Object");
    }

    private SessionsSettings(Context context, InterfaceC1952k interfaceC1952k, InterfaceC1952k interfaceC1952k2, FirebaseInstallationsApi firebaseInstallationsApi, ApplicationInfo applicationInfo) {
        this(new LocalOverrideSettings(context), new RemoteSettings(interfaceC1952k2, firebaseInstallationsApi, applicationInfo, new RemoteSettingsFetcher(applicationInfo, interfaceC1952k, null, 4, null), Companion.getDataStore(context)));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SessionsSettings(com.google.firebase.FirebaseApp r8, y5.InterfaceC1952k r9, y5.InterfaceC1952k r10, com.google.firebase.installations.FirebaseInstallationsApi r11) {
        /*
            r7 = this;
            java.lang.String r0 = "firebaseApp"
            kotlin.jvm.internal.j.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "blockingDispatcher"
            kotlin.jvm.internal.j.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "backgroundDispatcher"
            kotlin.jvm.internal.j.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "firebaseInstallationsApi"
            kotlin.jvm.internal.j.checkNotNullParameter(r11, r0)
            android.content.Context r2 = r8.getApplicationContext()
            java.lang.String r0 = "firebaseApp.applicationContext"
            kotlin.jvm.internal.j.checkNotNullExpressionValue(r2, r0)
            com.google.firebase.sessions.SessionEvents r0 = com.google.firebase.sessions.SessionEvents.INSTANCE
            com.google.firebase.sessions.ApplicationInfo r6 = r0.getApplicationInfo(r8)
            r1 = r7
            r3 = r9
            r4 = r10
            r5 = r11
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.settings.SessionsSettings.<init>(com.google.firebase.FirebaseApp, y5.k, y5.k, com.google.firebase.installations.FirebaseInstallationsApi):void");
    }
}
