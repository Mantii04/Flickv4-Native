package com.google.firebase.sessions;

import A.i;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class ApplicationInfo {
    private final AndroidApplicationInfo androidAppInfo;
    private final String appId;
    private final String deviceModel;
    private final LogEnvironment logEnvironment;
    private final String osVersion;
    private final String sessionSdkVersion;

    public ApplicationInfo(String appId, String deviceModel, String sessionSdkVersion, String osVersion, LogEnvironment logEnvironment, AndroidApplicationInfo androidAppInfo) {
        j.checkNotNullParameter(appId, "appId");
        j.checkNotNullParameter(deviceModel, "deviceModel");
        j.checkNotNullParameter(sessionSdkVersion, "sessionSdkVersion");
        j.checkNotNullParameter(osVersion, "osVersion");
        j.checkNotNullParameter(logEnvironment, "logEnvironment");
        j.checkNotNullParameter(androidAppInfo, "androidAppInfo");
        this.appId = appId;
        this.deviceModel = deviceModel;
        this.sessionSdkVersion = sessionSdkVersion;
        this.osVersion = osVersion;
        this.logEnvironment = logEnvironment;
        this.androidAppInfo = androidAppInfo;
    }

    public static /* synthetic */ ApplicationInfo copy$default(ApplicationInfo applicationInfo, String str, String str2, String str3, String str4, LogEnvironment logEnvironment, AndroidApplicationInfo androidApplicationInfo, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = applicationInfo.appId;
        }
        if ((i2 & 2) != 0) {
            str2 = applicationInfo.deviceModel;
        }
        if ((i2 & 4) != 0) {
            str3 = applicationInfo.sessionSdkVersion;
        }
        if ((i2 & 8) != 0) {
            str4 = applicationInfo.osVersion;
        }
        if ((i2 & 16) != 0) {
            logEnvironment = applicationInfo.logEnvironment;
        }
        if ((i2 & 32) != 0) {
            androidApplicationInfo = applicationInfo.androidAppInfo;
        }
        LogEnvironment logEnvironment2 = logEnvironment;
        AndroidApplicationInfo androidApplicationInfo2 = androidApplicationInfo;
        return applicationInfo.copy(str, str2, str3, str4, logEnvironment2, androidApplicationInfo2);
    }

    public final String component1() {
        return this.appId;
    }

    public final String component2() {
        return this.deviceModel;
    }

    public final String component3() {
        return this.sessionSdkVersion;
    }

    public final String component4() {
        return this.osVersion;
    }

    public final LogEnvironment component5() {
        return this.logEnvironment;
    }

    public final AndroidApplicationInfo component6() {
        return this.androidAppInfo;
    }

    public final ApplicationInfo copy(String appId, String deviceModel, String sessionSdkVersion, String osVersion, LogEnvironment logEnvironment, AndroidApplicationInfo androidAppInfo) {
        j.checkNotNullParameter(appId, "appId");
        j.checkNotNullParameter(deviceModel, "deviceModel");
        j.checkNotNullParameter(sessionSdkVersion, "sessionSdkVersion");
        j.checkNotNullParameter(osVersion, "osVersion");
        j.checkNotNullParameter(logEnvironment, "logEnvironment");
        j.checkNotNullParameter(androidAppInfo, "androidAppInfo");
        return new ApplicationInfo(appId, deviceModel, sessionSdkVersion, osVersion, logEnvironment, androidAppInfo);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ApplicationInfo)) {
            return false;
        }
        ApplicationInfo applicationInfo = (ApplicationInfo) obj;
        return j.areEqual(this.appId, applicationInfo.appId) && j.areEqual(this.deviceModel, applicationInfo.deviceModel) && j.areEqual(this.sessionSdkVersion, applicationInfo.sessionSdkVersion) && j.areEqual(this.osVersion, applicationInfo.osVersion) && this.logEnvironment == applicationInfo.logEnvironment && j.areEqual(this.androidAppInfo, applicationInfo.androidAppInfo);
    }

    public final AndroidApplicationInfo getAndroidAppInfo() {
        return this.androidAppInfo;
    }

    public final String getAppId() {
        return this.appId;
    }

    public final String getDeviceModel() {
        return this.deviceModel;
    }

    public final LogEnvironment getLogEnvironment() {
        return this.logEnvironment;
    }

    public final String getOsVersion() {
        return this.osVersion;
    }

    public final String getSessionSdkVersion() {
        return this.sessionSdkVersion;
    }

    public int hashCode() {
        return this.androidAppInfo.hashCode() + ((this.logEnvironment.hashCode() + i.b(i.b(i.b(this.appId.hashCode() * 31, 31, this.deviceModel), 31, this.sessionSdkVersion), 31, this.osVersion)) * 31);
    }

    public String toString() {
        return "ApplicationInfo(appId=" + this.appId + ", deviceModel=" + this.deviceModel + ", sessionSdkVersion=" + this.sessionSdkVersion + ", osVersion=" + this.osVersion + ", logEnvironment=" + this.logEnvironment + ", androidAppInfo=" + this.androidAppInfo + ')';
    }
}
