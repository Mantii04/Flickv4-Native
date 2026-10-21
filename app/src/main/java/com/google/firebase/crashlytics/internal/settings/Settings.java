package com.google.firebase.crashlytics.internal.settings;

/* loaded from: classes2.dex */
public class Settings {
    public final int cacheDuration;
    public final long expiresAtMillis;
    public final FeatureFlagData featureFlagData;
    public final double onDemandBackoffBase;
    public final int onDemandBackoffStepDurationSeconds;
    public final double onDemandUploadRatePerMinute;
    public final SessionData sessionData;
    public final int settingsVersion;

    public static class FeatureFlagData {
        public final boolean collectAnrs;
        public final boolean collectBuildIds;
        public final boolean collectReports;

        public FeatureFlagData(boolean z6, boolean z7, boolean z8) {
            this.collectReports = z6;
            this.collectAnrs = z7;
            this.collectBuildIds = z8;
        }
    }

    public static class SessionData {
        public final int maxCompleteSessionsCount;
        public final int maxCustomExceptionEvents;

        public SessionData(int i2, int i7) {
            this.maxCustomExceptionEvents = i2;
            this.maxCompleteSessionsCount = i7;
        }
    }

    public Settings(long j7, SessionData sessionData, FeatureFlagData featureFlagData, int i2, int i7, double d7, double d8, int i8) {
        this.expiresAtMillis = j7;
        this.sessionData = sessionData;
        this.featureFlagData = featureFlagData;
        this.settingsVersion = i2;
        this.cacheDuration = i7;
        this.onDemandUploadRatePerMinute = d7;
        this.onDemandBackoffBase = d8;
        this.onDemandBackoffStepDurationSeconds = i8;
    }

    public boolean isExpired(long j7) {
        return this.expiresAtMillis < j7;
    }
}
