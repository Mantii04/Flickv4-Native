package com.google.firebase.sessions;

import A.i;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class SessionDetails {
    private final String firstSessionId;
    private final String sessionId;
    private final int sessionIndex;
    private final long sessionStartTimestampUs;

    public SessionDetails(String sessionId, String firstSessionId, int i2, long j7) {
        j.checkNotNullParameter(sessionId, "sessionId");
        j.checkNotNullParameter(firstSessionId, "firstSessionId");
        this.sessionId = sessionId;
        this.firstSessionId = firstSessionId;
        this.sessionIndex = i2;
        this.sessionStartTimestampUs = j7;
    }

    public static /* synthetic */ SessionDetails copy$default(SessionDetails sessionDetails, String str, String str2, int i2, long j7, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            str = sessionDetails.sessionId;
        }
        if ((i7 & 2) != 0) {
            str2 = sessionDetails.firstSessionId;
        }
        if ((i7 & 4) != 0) {
            i2 = sessionDetails.sessionIndex;
        }
        if ((i7 & 8) != 0) {
            j7 = sessionDetails.sessionStartTimestampUs;
        }
        int i8 = i2;
        return sessionDetails.copy(str, str2, i8, j7);
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
        return this.sessionStartTimestampUs;
    }

    public final SessionDetails copy(String sessionId, String firstSessionId, int i2, long j7) {
        j.checkNotNullParameter(sessionId, "sessionId");
        j.checkNotNullParameter(firstSessionId, "firstSessionId");
        return new SessionDetails(sessionId, firstSessionId, i2, j7);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionDetails)) {
            return false;
        }
        SessionDetails sessionDetails = (SessionDetails) obj;
        return j.areEqual(this.sessionId, sessionDetails.sessionId) && j.areEqual(this.firstSessionId, sessionDetails.firstSessionId) && this.sessionIndex == sessionDetails.sessionIndex && this.sessionStartTimestampUs == sessionDetails.sessionStartTimestampUs;
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

    public final long getSessionStartTimestampUs() {
        return this.sessionStartTimestampUs;
    }

    public int hashCode() {
        int b7 = (i.b(this.sessionId.hashCode() * 31, 31, this.firstSessionId) + this.sessionIndex) * 31;
        long j7 = this.sessionStartTimestampUs;
        return b7 + ((int) (j7 ^ (j7 >>> 32)));
    }

    public String toString() {
        return "SessionDetails(sessionId=" + this.sessionId + ", firstSessionId=" + this.firstSessionId + ", sessionIndex=" + this.sessionIndex + ", sessionStartTimestampUs=" + this.sessionStartTimestampUs + ')';
    }
}
