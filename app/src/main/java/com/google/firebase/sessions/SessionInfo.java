package com.google.firebase.sessions;

import A.i;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class SessionInfo {
    private final DataCollectionStatus dataCollectionStatus;
    private final long eventTimestampUs;
    private final String firebaseAuthenticationToken;
    private final String firebaseInstallationId;
    private final String firstSessionId;
    private final String sessionId;
    private final int sessionIndex;

    public SessionInfo(String sessionId, String firstSessionId, int i2, long j7, DataCollectionStatus dataCollectionStatus, String firebaseInstallationId, String firebaseAuthenticationToken) {
        j.checkNotNullParameter(sessionId, "sessionId");
        j.checkNotNullParameter(firstSessionId, "firstSessionId");
        j.checkNotNullParameter(dataCollectionStatus, "dataCollectionStatus");
        j.checkNotNullParameter(firebaseInstallationId, "firebaseInstallationId");
        j.checkNotNullParameter(firebaseAuthenticationToken, "firebaseAuthenticationToken");
        this.sessionId = sessionId;
        this.firstSessionId = firstSessionId;
        this.sessionIndex = i2;
        this.eventTimestampUs = j7;
        this.dataCollectionStatus = dataCollectionStatus;
        this.firebaseInstallationId = firebaseInstallationId;
        this.firebaseAuthenticationToken = firebaseAuthenticationToken;
    }

    public static /* synthetic */ SessionInfo copy$default(SessionInfo sessionInfo, String str, String str2, int i2, long j7, DataCollectionStatus dataCollectionStatus, String str3, String str4, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            str = sessionInfo.sessionId;
        }
        if ((i7 & 2) != 0) {
            str2 = sessionInfo.firstSessionId;
        }
        if ((i7 & 4) != 0) {
            i2 = sessionInfo.sessionIndex;
        }
        if ((i7 & 8) != 0) {
            j7 = sessionInfo.eventTimestampUs;
        }
        if ((i7 & 16) != 0) {
            dataCollectionStatus = sessionInfo.dataCollectionStatus;
        }
        if ((i7 & 32) != 0) {
            str3 = sessionInfo.firebaseInstallationId;
        }
        if ((i7 & 64) != 0) {
            str4 = sessionInfo.firebaseAuthenticationToken;
        }
        String str5 = str4;
        DataCollectionStatus dataCollectionStatus2 = dataCollectionStatus;
        long j8 = j7;
        int i8 = i2;
        return sessionInfo.copy(str, str2, i8, j8, dataCollectionStatus2, str3, str5);
    }

    public final String component1() {
        return this.sessionId;
    }

    public final String component2() {
        return this.firstSessionId;
    }

    public final int component3() {
        return this.sessionIndex;
    }

    public final long component4() {
        return this.eventTimestampUs;
    }

    public final DataCollectionStatus component5() {
        return this.dataCollectionStatus;
    }

    public final String component6() {
        return this.firebaseInstallationId;
    }

    public final String component7() {
        return this.firebaseAuthenticationToken;
    }

    public final SessionInfo copy(String sessionId, String firstSessionId, int i2, long j7, DataCollectionStatus dataCollectionStatus, String firebaseInstallationId, String firebaseAuthenticationToken) {
        j.checkNotNullParameter(sessionId, "sessionId");
        j.checkNotNullParameter(firstSessionId, "firstSessionId");
        j.checkNotNullParameter(dataCollectionStatus, "dataCollectionStatus");
        j.checkNotNullParameter(firebaseInstallationId, "firebaseInstallationId");
        j.checkNotNullParameter(firebaseAuthenticationToken, "firebaseAuthenticationToken");
        return new SessionInfo(sessionId, firstSessionId, i2, j7, dataCollectionStatus, firebaseInstallationId, firebaseAuthenticationToken);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionInfo)) {
            return false;
        }
        SessionInfo sessionInfo = (SessionInfo) obj;
        return j.areEqual(this.sessionId, sessionInfo.sessionId) && j.areEqual(this.firstSessionId, sessionInfo.firstSessionId) && this.sessionIndex == sessionInfo.sessionIndex && this.eventTimestampUs == sessionInfo.eventTimestampUs && j.areEqual(this.dataCollectionStatus, sessionInfo.dataCollectionStatus) && j.areEqual(this.firebaseInstallationId, sessionInfo.firebaseInstallationId) && j.areEqual(this.firebaseAuthenticationToken, sessionInfo.firebaseAuthenticationToken);
    }

    public final DataCollectionStatus getDataCollectionStatus() {
        return this.dataCollectionStatus;
    }

    public final long getEventTimestampUs() {
        return this.eventTimestampUs;
    }

    public final String getFirebaseAuthenticationToken() {
        return this.firebaseAuthenticationToken;
    }

    public final String getFirebaseInstallationId() {
        return this.firebaseInstallationId;
    }

    public final String getFirstSessionId() {
        return this.firstSessionId;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final int getSessionIndex() {
        return this.sessionIndex;
    }

    public int hashCode() {
        int b7 = (i.b(this.sessionId.hashCode() * 31, 31, this.firstSessionId) + this.sessionIndex) * 31;
        long j7 = this.eventTimestampUs;
        return this.firebaseAuthenticationToken.hashCode() + i.b((this.dataCollectionStatus.hashCode() + ((b7 + ((int) (j7 ^ (j7 >>> 32)))) * 31)) * 31, 31, this.firebaseInstallationId);
    }

    public String toString() {
        return "SessionInfo(sessionId=" + this.sessionId + ", firstSessionId=" + this.firstSessionId + ", sessionIndex=" + this.sessionIndex + ", eventTimestampUs=" + this.eventTimestampUs + ", dataCollectionStatus=" + this.dataCollectionStatus + ", firebaseInstallationId=" + this.firebaseInstallationId + ", firebaseAuthenticationToken=" + this.firebaseAuthenticationToken + ')';
    }
}
