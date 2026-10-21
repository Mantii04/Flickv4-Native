package com.google.firebase.sessions.settings;

import H5.p;
import R5.AbstractC0273g;
import android.net.Uri;
import com.google.firebase.sessions.ApplicationInfo;
import java.net.URL;
import java.util.Map;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import u5.C1711j;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public final class RemoteSettingsFetcher implements CrashlyticsSettingsFetcher {
    public static final Companion Companion = new Companion(null);
    private static final String FIREBASE_PLATFORM = "android";
    private static final String FIREBASE_SESSIONS_BASE_URL_STRING = "firebase-settings.crashlytics.com";
    private final ApplicationInfo appInfo;
    private final String baseUrl;
    private final InterfaceC1952k blockingDispatcher;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        private Companion() {
        }
    }

    public RemoteSettingsFetcher(ApplicationInfo appInfo, InterfaceC1952k blockingDispatcher, String baseUrl) {
        j.checkNotNullParameter(appInfo, "appInfo");
        j.checkNotNullParameter(blockingDispatcher, "blockingDispatcher");
        j.checkNotNullParameter(baseUrl, "baseUrl");
        this.appInfo = appInfo;
        this.blockingDispatcher = blockingDispatcher;
        this.baseUrl = baseUrl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final URL settingsUrl() {
        return new URL(new Uri.Builder().scheme("https").authority(this.baseUrl).appendPath("spi").appendPath("v2").appendPath("platforms").appendPath(FIREBASE_PLATFORM).appendPath("gmp").appendPath(this.appInfo.getAppId()).appendPath("settings").appendQueryParameter("build_version", this.appInfo.getAndroidAppInfo().getAppBuildVersion()).appendQueryParameter("display_version", this.appInfo.getAndroidAppInfo().getVersionName()).build().toString());
    }

    @Override // com.google.firebase.sessions.settings.CrashlyticsSettingsFetcher
    public Object doConfigFetch(Map<String, String> map, p pVar, p pVar2, InterfaceC1944c interfaceC1944c) {
        Object withContext = AbstractC0273g.withContext(this.blockingDispatcher, new RemoteSettingsFetcher$doConfigFetch$2(this, map, pVar, pVar2, null), interfaceC1944c);
        return withContext == AbstractC2008a.getCOROUTINE_SUSPENDED() ? withContext : C1711j.f20329a;
    }

    public /* synthetic */ RemoteSettingsFetcher(ApplicationInfo applicationInfo, InterfaceC1952k interfaceC1952k, String str, int i2, g gVar) {
        this(applicationInfo, interfaceC1952k, (i2 & 4) != 0 ? FIREBASE_SESSIONS_BASE_URL_STRING : str);
    }
}
