package S2;

import java.util.Map;

/* renamed from: S2.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0319i extends t {

    /* renamed from: a, reason: collision with root package name */
    public String f3332a;

    /* renamed from: b, reason: collision with root package name */
    public Integer f3333b;

    /* renamed from: c, reason: collision with root package name */
    public s f3334c;

    /* renamed from: d, reason: collision with root package name */
    public Long f3335d;

    /* renamed from: e, reason: collision with root package name */
    public Long f3336e;

    /* renamed from: f, reason: collision with root package name */
    public Map f3337f;

    @Override // S2.t
    public u build() {
        String str = this.f3332a == null ? " transportName" : "";
        if (this.f3334c == null) {
            str = str.concat(" encodedPayload");
        }
        if (this.f3335d == null) {
            str = A.i.B(str, " eventMillis");
        }
        if (this.f3336e == null) {
            str = A.i.B(str, " uptimeMillis");
        }
        if (this.f3337f == null) {
            str = A.i.B(str, " autoMetadata");
        }
        if (str.isEmpty()) {
            return new C0320j(this.f3332a, this.f3333b, this.f3334c, this.f3335d.longValue(), this.f3336e.longValue(), this.f3337f);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    @Override // S2.t
    public Map<String, String> getAutoMetadata() {
        Map<String, String> map = this.f3337f;
        if (map != null) {
            return map;
        }
        throw new IllegalStateException("Property \"autoMetadata\" has not been set");
    }

    @Override // S2.t
    public t setAutoMetadata(Map<String, String> map) {
        if (map == null) {
            throw new NullPointerException("Null autoMetadata");
        }
        this.f3337f = map;
        return this;
    }

    @Override // S2.t
    public t setCode(Integer num) {
        this.f3333b = num;
        return this;
    }

    @Override // S2.t
    public t setEncodedPayload(s sVar) {
        if (sVar == null) {
            throw new NullPointerException("Null encodedPayload");
        }
        this.f3334c = sVar;
        return this;
    }

    @Override // S2.t
    public t setEventMillis(long j7) {
        this.f3335d = Long.valueOf(j7);
        return this;
    }

    @Override // S2.t
    public t setTransportName(String str) {
        if (str == null) {
            throw new NullPointerException("Null transportName");
        }
        this.f3332a = str;
        return this;
    }

    @Override // S2.t
    public t setUptimeMillis(long j7) {
        this.f3336e = Long.valueOf(j7);
        return this;
    }
}
