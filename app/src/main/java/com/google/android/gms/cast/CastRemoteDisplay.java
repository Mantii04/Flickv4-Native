package com.google.android.gms.cast;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

@Deprecated
/* loaded from: classes.dex */
public final class CastRemoteDisplay {

    @Deprecated
    public static final class CastRemoteDisplayOptions implements Api.ApiOptions.HasOptions {

        @Deprecated
        public static final class Builder {
        }
    }

    @Deprecated
    public interface CastRemoteDisplaySessionCallbacks {
        void onRemoteDisplayEnded(Status status);
    }

    @Deprecated
    public interface CastRemoteDisplaySessionResult extends Result {
    }

    public @interface Configuration {
    }

    static {
        new com.google.android.gms.internal.cast.zzdn(new Api("CastRemoteDisplay.API", new zzx(), com.google.android.gms.cast.internal.zzak.f10350c));
    }

    private CastRemoteDisplay() {
    }

    public static CastRemoteDisplayClient getClient(Context context) {
        return new CastRemoteDisplayClient(context);
    }
}
