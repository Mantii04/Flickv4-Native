package R2;

/* loaded from: classes.dex */
public final class o extends y {

    /* renamed from: a, reason: collision with root package name */
    public Long f3080a;

    /* renamed from: b, reason: collision with root package name */
    public Integer f3081b;

    /* renamed from: c, reason: collision with root package name */
    public Long f3082c;

    /* renamed from: d, reason: collision with root package name */
    public byte[] f3083d;

    /* renamed from: e, reason: collision with root package name */
    public String f3084e;

    /* renamed from: f, reason: collision with root package name */
    public Long f3085f;

    /* renamed from: g, reason: collision with root package name */
    public E f3086g;

    @Override // R2.y
    public z build() {
        String str = this.f3080a == null ? " eventTimeMs" : "";
        if (this.f3082c == null) {
            str = str.concat(" eventUptimeMs");
        }
        if (this.f3085f == null) {
            str = A.i.B(str, " timezoneOffsetSeconds");
        }
        if (str.isEmpty()) {
            return new p(this.f3080a.longValue(), this.f3081b, this.f3082c.longValue(), this.f3083d, this.f3084e, this.f3085f.longValue(), this.f3086g);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    @Override // R2.y
    public y setEventCode(Integer num) {
        this.f3081b = num;
        return this;
    }

    @Override // R2.y
    public y setEventTimeMs(long j7) {
        this.f3080a = Long.valueOf(j7);
        return this;
    }

    @Override // R2.y
    public y setEventUptimeMs(long j7) {
        this.f3082c = Long.valueOf(j7);
        return this;
    }

    @Override // R2.y
    public y setNetworkConnectionInfo(E e3) {
        this.f3086g = e3;
        return this;
    }

    @Override // R2.y
    public y setTimezoneOffsetSeconds(long j7) {
        this.f3085f = Long.valueOf(j7);
        return this;
    }
}
