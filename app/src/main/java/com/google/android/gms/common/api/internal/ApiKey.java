package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Objects;

/* loaded from: classes.dex */
public final class ApiKey<O extends Api.ApiOptions> {

    /* renamed from: a, reason: collision with root package name */
    public final int f10615a;

    /* renamed from: b, reason: collision with root package name */
    public final Api f10616b;

    /* renamed from: c, reason: collision with root package name */
    public final Api.ApiOptions f10617c;

    /* renamed from: d, reason: collision with root package name */
    public final String f10618d;

    public ApiKey(Api api, Api.ApiOptions apiOptions, String str) {
        this.f10616b = api;
        this.f10617c = apiOptions;
        this.f10618d = str;
        this.f10615a = Objects.hashCode(api, apiOptions, str);
    }

    public static <O extends Api.ApiOptions> ApiKey<O> zaa(Api<O> api, O o6, String str) {
        return new ApiKey<>(api, o6, str);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApiKey)) {
            return false;
        }
        ApiKey apiKey = (ApiKey) obj;
        return Objects.equal(this.f10616b, apiKey.f10616b) && Objects.equal(this.f10617c, apiKey.f10617c) && Objects.equal(this.f10618d, apiKey.f10618d);
    }

    public final int hashCode() {
        return this.f10615a;
    }

    public final String zab() {
        return this.f10616b.zad();
    }
}
