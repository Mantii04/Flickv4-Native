package com.google.firebase.sessions.settings;

import R5.AbstractC0277i;
import R5.J;
import Y.d;
import a6.b;
import a6.c;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.ApplicationInfo;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import kotlin.text.Regex;
import kotlin.time.DurationUnit;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class RemoteSettings implements SettingsProvider {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String FORWARD_SLASH_STRING = "/";

    @Deprecated
    public static final String TAG = "SessionConfigFetcher";
    private final ApplicationInfo appInfo;
    private final InterfaceC1952k backgroundDispatcher;
    private final CrashlyticsSettingsFetcher configsFetcher;
    private final b fetchInProgress;
    private final FirebaseInstallationsApi firebaseInstallationsApi;
    private final SettingsCache settingsCache;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        private Companion() {
        }
    }

    public RemoteSettings(InterfaceC1952k backgroundDispatcher, FirebaseInstallationsApi firebaseInstallationsApi, ApplicationInfo appInfo, CrashlyticsSettingsFetcher configsFetcher, d dataStore) {
        j.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        j.checkNotNullParameter(firebaseInstallationsApi, "firebaseInstallationsApi");
        j.checkNotNullParameter(appInfo, "appInfo");
        j.checkNotNullParameter(configsFetcher, "configsFetcher");
        j.checkNotNullParameter(dataStore, "dataStore");
        this.backgroundDispatcher = backgroundDispatcher;
        this.firebaseInstallationsApi = firebaseInstallationsApi;
        this.appInfo = appInfo;
        this.configsFetcher = configsFetcher;
        this.settingsCache = new SettingsCache(dataStore);
        this.fetchInProgress = c.Mutex$default(false, 1, null);
    }

    private final String removeForwardSlashesIn(String str) {
        return new Regex(FORWARD_SLASH_STRING).replace(str, "");
    }

    public final void clearCachedSettings$com_google_firebase_firebase_sessions() {
        AbstractC0277i.launch$default(J.CoroutineScope(this.backgroundDispatcher), null, null, new RemoteSettings$clearCachedSettings$1(this, null), 3, null);
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public Double getSamplingRate() {
        return this.settingsCache.sessionSamplingRate();
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public Boolean getSessionEnabled() {
        return this.settingsCache.sessionsEnabled();
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    /* renamed from: getSessionRestartTimeout-FghU774 */
    public Q5.b mo77getSessionRestartTimeoutFghU774() {
        Integer sessionRestartTimeout = this.settingsCache.sessionRestartTimeout();
        if (sessionRestartTimeout == null) {
            return null;
        }
        int i2 = Q5.b.f2996j;
        return Q5.b.m3boximpl(Q5.d.toDuration(sessionRestartTimeout.intValue(), DurationUnit.f17471j));
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public boolean isSettingsStale() {
        return this.settingsCache.hasCacheExpired$com_google_firebase_firebase_sessions();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00c2 A[Catch: all -> 0x0055, TryCatch #0 {all -> 0x0055, blocks: (B:25:0x0051, B:26:0x00b4, B:28:0x00c2, B:31:0x00c8, B:36:0x008f, B:38:0x0097, B:39:0x00a2), top: B:7:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c8 A[Catch: all -> 0x0055, TRY_LEAVE, TryCatch #0 {all -> 0x0055, blocks: (B:25:0x0051, B:26:0x00b4, B:28:0x00c2, B:31:0x00c8, B:36:0x008f, B:38:0x0097, B:39:0x00a2), top: B:7:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0097 A[Catch: all -> 0x0055, TRY_LEAVE, TryCatch #0 {all -> 0x0055, blocks: (B:25:0x0051, B:26:0x00b4, B:28:0x00c2, B:31:0x00c8, B:36:0x008f, B:38:0x0097, B:39:0x00a2), top: B:7:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a2 A[Catch: all -> 0x0055, TRY_ENTER, TryCatch #0 {all -> 0x0055, blocks: (B:25:0x0051, B:26:0x00b4, B:28:0x00c2, B:31:0x00c8, B:36:0x008f, B:38:0x0097, B:39:0x00a2), top: B:7:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002f  */
    /* JADX WARN: Type inference failed for: r8v0, types: [int] */
    @Override // com.google.firebase.sessions.settings.SettingsProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object updateSettings(y5.InterfaceC1944c r19) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.settings.RemoteSettings.updateSettings(y5.c):java.lang.Object");
    }
}
