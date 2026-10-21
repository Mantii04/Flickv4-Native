package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.Objects;

/* loaded from: classes.dex */
final class zabs {

    /* renamed from: a, reason: collision with root package name */
    public final ApiKey f10737a;

    /* renamed from: b, reason: collision with root package name */
    public final Feature f10738b;

    public /* synthetic */ zabs(ApiKey apiKey, Feature feature) {
        this.f10737a = apiKey;
        this.f10738b = feature;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zabs)) {
            zabs zabsVar = (zabs) obj;
            if (Objects.equal(this.f10737a, zabsVar.f10737a) && Objects.equal(this.f10738b, zabsVar.f10738b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f10737a, this.f10738b);
    }

    public final String toString() {
        return Objects.toStringHelper(this).add("key", this.f10737a).add("feature", this.f10738b).toString();
    }
}
