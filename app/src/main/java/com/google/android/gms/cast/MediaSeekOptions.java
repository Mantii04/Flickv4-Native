package com.google.android.gms.cast;

import com.google.android.gms.common.internal.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MediaSeekOptions {

    /* renamed from: a, reason: collision with root package name */
    public final long f9738a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9739b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9740c;

    /* renamed from: d, reason: collision with root package name */
    public final JSONObject f9741d;

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public long f9742a;

        /* renamed from: b, reason: collision with root package name */
        public int f9743b = 0;

        /* renamed from: c, reason: collision with root package name */
        public boolean f9744c;

        /* renamed from: d, reason: collision with root package name */
        public JSONObject f9745d;

        public MediaSeekOptions build() {
            return new MediaSeekOptions(this.f9742a, this.f9743b, this.f9744c, this.f9745d);
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.f9745d = jSONObject;
            return this;
        }

        public Builder setIsSeekToInfinite(boolean z6) {
            this.f9744c = z6;
            return this;
        }

        public Builder setPosition(long j7) {
            this.f9742a = j7;
            return this;
        }

        public Builder setResumeState(int i2) {
            this.f9743b = i2;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ResumeState {
    }

    public /* synthetic */ MediaSeekOptions(long j7, int i2, boolean z6, JSONObject jSONObject) {
        this.f9738a = j7;
        this.f9739b = i2;
        this.f9740c = z6;
        this.f9741d = jSONObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSeekOptions)) {
            return false;
        }
        MediaSeekOptions mediaSeekOptions = (MediaSeekOptions) obj;
        return this.f9738a == mediaSeekOptions.f9738a && this.f9739b == mediaSeekOptions.f9739b && this.f9740c == mediaSeekOptions.f9740c && Objects.equal(this.f9741d, mediaSeekOptions.f9741d);
    }

    public JSONObject getCustomData() {
        return this.f9741d;
    }

    public long getPosition() {
        return this.f9738a;
    }

    public int getResumeState() {
        return this.f9739b;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f9738a), Integer.valueOf(this.f9739b), Boolean.valueOf(this.f9740c), this.f9741d);
    }

    public boolean isSeekToInfinite() {
        return this.f9740c;
    }
}
