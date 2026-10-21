package S2;

import java.util.Map;

/* renamed from: S2.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0320j extends u {

    /* renamed from: a, reason: collision with root package name */
    public final String f3338a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f3339b;

    /* renamed from: c, reason: collision with root package name */
    public final s f3340c;

    /* renamed from: d, reason: collision with root package name */
    public final long f3341d;

    /* renamed from: e, reason: collision with root package name */
    public final long f3342e;

    /* renamed from: f, reason: collision with root package name */
    public final Map f3343f;

    public C0320j(String str, Integer num, s sVar, long j7, long j8, Map map) {
        this.f3338a = str;
        this.f3339b = num;
        this.f3340c = sVar;
        this.f3341d = j7;
        this.f3342e = j8;
        this.f3343f = map;
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (obj instanceof u) {
            u uVar = (u) obj;
            if (this.f3338a.equals(uVar.getTransportName()) && ((num = this.f3339b) != null ? num.equals(uVar.getCode()) : uVar.getCode() == null) && this.f3340c.equals(uVar.getEncodedPayload()) && this.f3341d == uVar.getEventMillis() && this.f3342e == uVar.getUptimeMillis() && this.f3343f.equals(uVar.getAutoMetadata())) {
                return true;
            }
        }
        return false;
    }

    @Override // S2.u
    public Map<String, String> getAutoMetadata() {
        return this.f3343f;
    }

    @Override // S2.u
    public Integer getCode() {
        return this.f3339b;
    }

    @Override // S2.u
    public s getEncodedPayload() {
        return this.f3340c;
    }

    @Override // S2.u
    public long getEventMillis() {
        return this.f3341d;
    }

    @Override // S2.u
    public String getTransportName() {
        return this.f3338a;
    }

    @Override // S2.u
    public long getUptimeMillis() {
        return this.f3342e;
    }

    public int hashCode() {
        int hashCode = (this.f3338a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f3339b;
        int hashCode2 = (((hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f3340c.hashCode()) * 1000003;
        long j7 = this.f3341d;
        int i2 = (hashCode2 ^ ((int) (j7 ^ (j7 >>> 32)))) * 1000003;
        long j8 = this.f3342e;
        return ((i2 ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003) ^ this.f3343f.hashCode();
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f3338a + ", code=" + this.f3339b + ", encodedPayload=" + this.f3340c + ", eventMillis=" + this.f3341d + ", uptimeMillis=" + this.f3342e + ", autoMetadata=" + this.f3343f + "}";
    }
}
