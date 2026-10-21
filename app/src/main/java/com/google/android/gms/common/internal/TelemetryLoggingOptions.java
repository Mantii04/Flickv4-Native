package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;

@KeepForSdk
/* loaded from: classes.dex */
public class TelemetryLoggingOptions implements Api.ApiOptions.Optional {

    /* renamed from: b, reason: collision with root package name */
    public static final TelemetryLoggingOptions f10906b = builder().build();

    @KeepForSdk
    public static class Builder {
        private Builder() {
        }

        @KeepForSdk
        public TelemetryLoggingOptions build() {
            return new TelemetryLoggingOptions();
        }
    }

    @KeepForSdk
    public static Builder builder() {
        return new Builder();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TelemetryLoggingOptions)) {
            return false;
        }
        ((TelemetryLoggingOptions) obj).getClass();
        return Objects.equal(null, null);
    }

    public final int hashCode() {
        return Objects.hashCode(null);
    }

    public final Bundle zaa() {
        return new Bundle();
    }
}
