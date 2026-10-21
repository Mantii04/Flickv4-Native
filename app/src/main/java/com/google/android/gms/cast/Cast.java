package com.google.android.gms.cast;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.UUID;

/* loaded from: classes.dex */
public final class Cast {

    /* renamed from: a, reason: collision with root package name */
    public static final Api f9602a = new Api("Cast.API", new zze(), com.google.android.gms.cast.internal.zzak.f10348a);

    /* renamed from: b, reason: collision with root package name */
    public static final zzm f9603b = new zzm();

    public interface ApplicationConnectionResult extends Result {
        ApplicationMetadata getApplicationMetadata();

        String getApplicationStatus();

        String getSessionId();

        boolean getWasLaunched();
    }

    @Deprecated
    public interface CastApi {
        PendingResult<Status> sendMessage(GoogleApiClient googleApiClient, String str, String str2);
    }

    public static final class CastOptions implements Api.ApiOptions.HasOptions {

        /* renamed from: b, reason: collision with root package name */
        public final CastDevice f9604b;

        /* renamed from: e, reason: collision with root package name */
        public final Listener f9605e;

        /* renamed from: f, reason: collision with root package name */
        public final Bundle f9606f;

        /* renamed from: j, reason: collision with root package name */
        public final String f9607j = UUID.randomUUID().toString();

        public static final class Builder {

            /* renamed from: a, reason: collision with root package name */
            public final CastDevice f9608a;

            /* renamed from: b, reason: collision with root package name */
            public final Listener f9609b;

            /* renamed from: c, reason: collision with root package name */
            public Bundle f9610c;

            public Builder(CastDevice castDevice, Listener listener) {
                Preconditions.checkNotNull(castDevice, "CastDevice parameter cannot be null");
                Preconditions.checkNotNull(listener, "CastListener parameter cannot be null");
                this.f9608a = castDevice;
                this.f9609b = listener;
            }

            public CastOptions build() {
                return new CastOptions(this);
            }

            public final Builder zzc(Bundle bundle) {
                this.f9610c = bundle;
                return this;
            }
        }

        public /* synthetic */ CastOptions(Builder builder) {
            this.f9604b = builder.f9608a;
            this.f9605e = builder.f9609b;
            this.f9606f = builder.f9610c;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CastOptions)) {
                return false;
            }
            CastOptions castOptions = (CastOptions) obj;
            return Objects.equal(this.f9604b, castOptions.f9604b) && Objects.checkBundlesEquality(this.f9606f, castOptions.f9606f) && Objects.equal(this.f9607j, castOptions.f9607j);
        }

        public int hashCode() {
            return Objects.hashCode(this.f9604b, this.f9606f, 0, this.f9607j);
        }
    }

    public static class Listener {
        public void onActiveInputStateChanged(int i2) {
        }

        public void onApplicationDisconnected(int i2) {
        }

        public void onApplicationMetadataChanged(ApplicationMetadata applicationMetadata) {
        }

        public void onApplicationStatusChanged() {
        }

        public void onDeviceNameChanged() {
        }

        public void onStandbyStateChanged(int i2) {
        }

        public void onVolumeChanged() {
        }
    }

    public interface MessageReceivedCallback {
        void onMessageReceived(CastDevice castDevice, String str, String str2);
    }

    private Cast() {
    }

    @ShowFirstParty
    public static zzr zza(Context context, CastOptions castOptions) {
        return new zzbt(context, castOptions);
    }
}
