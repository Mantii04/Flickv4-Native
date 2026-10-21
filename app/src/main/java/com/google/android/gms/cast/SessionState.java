package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import org.json.JSONObject;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class SessionState extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SessionState> CREATOR = new zzdr();

    /* renamed from: b, reason: collision with root package name */
    public final MediaLoadRequestData f9788b;

    /* renamed from: e, reason: collision with root package name */
    public String f9789e;

    /* renamed from: f, reason: collision with root package name */
    public final JSONObject f9790f;

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public MediaLoadRequestData f9791a;

        public SessionState build() {
            return new SessionState(this.f9791a, null);
        }

        public Builder setLoadRequestData(MediaLoadRequestData mediaLoadRequestData) {
            this.f9791a = mediaLoadRequestData;
            return this;
        }
    }

    public SessionState(MediaLoadRequestData mediaLoadRequestData, JSONObject jSONObject) {
        this.f9788b = mediaLoadRequestData;
        this.f9790f = jSONObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionState)) {
            return false;
        }
        SessionState sessionState = (SessionState) obj;
        if (JsonUtils.areJsonValuesEquivalent(this.f9790f, sessionState.f9790f)) {
            return Objects.equal(this.f9788b, sessionState.f9788b);
        }
        return false;
    }

    public MediaLoadRequestData getLoadRequestData() {
        return this.f9788b;
    }

    public int hashCode() {
        return Objects.hashCode(this.f9788b, String.valueOf(this.f9790f));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        JSONObject jSONObject = this.f9790f;
        this.f9789e = jSONObject == null ? null : jSONObject.toString();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getLoadRequestData(), i2, false);
        SafeParcelWriter.writeString(parcel, 3, this.f9789e, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
