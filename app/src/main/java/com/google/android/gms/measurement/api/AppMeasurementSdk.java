package com.google.android.gms.measurement.api;

import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.measurement.zzds;
import com.google.android.gms.measurement.internal.zziu;
import com.google.android.gms.measurement.internal.zzix;
import java.util.List;
import java.util.Map;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes2.dex */
public class AppMeasurementSdk {

    /* renamed from: a, reason: collision with root package name */
    public final zzds f11146a;

    @KeepForSdk
    public static final class ConditionalUserProperty {
        private ConditionalUserProperty() {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public interface EventInterceptor extends zziu {
    }

    @ShowFirstParty
    @KeepForSdk
    public interface OnEventListener extends zzix {
    }

    public AppMeasurementSdk(zzds zzdsVar) {
        this.f11146a = zzdsVar;
    }

    @KeepForSdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.f11146a.zza(str, str2, bundle);
    }

    @KeepForSdk
    public List<Bundle> getConditionalUserProperties(String str, String str2) {
        return this.f11146a.zza(str, str2);
    }

    @KeepForSdk
    public int getMaxUserProperties(String str) {
        return this.f11146a.zza(str);
    }

    @KeepForSdk
    public Map<String, Object> getUserProperties(String str, String str2, boolean z6) {
        return this.f11146a.zza(str, str2, z6);
    }

    @KeepForSdk
    public void logEvent(String str, String str2, Bundle bundle) {
        this.f11146a.zzb(str, str2, bundle);
    }

    @ShowFirstParty
    @KeepForSdk
    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        this.f11146a.zza(onEventListener);
    }

    @KeepForSdk
    public void setConditionalUserProperty(Bundle bundle) {
        this.f11146a.zza(bundle);
    }

    @KeepForSdk
    public void setUserProperty(String str, String str2, Object obj) {
        this.f11146a.zza(str, str2, obj, true);
    }

    public final void zza(boolean z6) {
        this.f11146a.zza(z6);
    }
}
