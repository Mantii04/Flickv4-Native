package R2;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class p extends z {

    /* renamed from: a, reason: collision with root package name */
    public final long f3087a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f3088b;

    /* renamed from: c, reason: collision with root package name */
    public final long f3089c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f3090d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3091e;

    /* renamed from: f, reason: collision with root package name */
    public final long f3092f;

    /* renamed from: g, reason: collision with root package name */
    public final E f3093g;

    public p(long j7, Integer num, long j8, byte[] bArr, String str, long j9, E e3) {
        this.f3087a = j7;
        this.f3088b = num;
        this.f3089c = j8;
        this.f3090d = bArr;
        this.f3091e = str;
        this.f3092f = j9;
        this.f3093g = e3;
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        E e3;
        if (obj == this) {
            return true;
        }
        if (obj instanceof z) {
            z zVar = (z) obj;
            if (this.f3087a == zVar.getEventTimeMs() && ((num = this.f3088b) != null ? num.equals(zVar.getEventCode()) : zVar.getEventCode() == null) && this.f3089c == zVar.getEventUptimeMs()) {
                if (Arrays.equals(this.f3090d, zVar instanceof p ? ((p) zVar).f3090d : zVar.getSourceExtension()) && ((str = this.f3091e) != null ? str.equals(zVar.getSourceExtensionJsonProto3()) : zVar.getSourceExtensionJsonProto3() == null) && this.f3092f == zVar.getTimezoneOffsetSeconds() && ((e3 = this.f3093g) != null ? e3.equals(zVar.getNetworkConnectionInfo()) : zVar.getNetworkConnectionInfo() == null)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // R2.z
    public Integer getEventCode() {
        return this.f3088b;
    }

    @Override // R2.z
    public long getEventTimeMs() {
        return this.f3087a;
    }

    @Override // R2.z
    public long getEventUptimeMs() {
        return this.f3089c;
    }

    @Override // R2.z
    public E getNetworkConnectionInfo() {
        return this.f3093g;
    }

    @Override // R2.z
    public byte[] getSourceExtension() {
        return this.f3090d;
    }

    @Override // R2.z
    public String getSourceExtensionJsonProto3() {
        return this.f3091e;
    }

    @Override // R2.z
    public long getTimezoneOffsetSeconds() {
        return this.f3092f;
    }

    public int hashCode() {
        long j7 = this.f3087a;
        int i2 = (((int) (j7 ^ (j7 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f3088b;
        int hashCode = (i2 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        long j8 = this.f3089c;
        int hashCode2 = (((hashCode ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f3090d)) * 1000003;
        String str = this.f3091e;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j9 = this.f3092f;
        int i7 = (hashCode3 ^ ((int) (j9 ^ (j9 >>> 32)))) * 1000003;
        E e3 = this.f3093g;
        return i7 ^ (e3 != null ? e3.hashCode() : 0);
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f3087a + ", eventCode=" + this.f3088b + ", eventUptimeMs=" + this.f3089c + ", sourceExtension=" + Arrays.toString(this.f3090d) + ", sourceExtensionJsonProto3=" + this.f3091e + ", timezoneOffsetSeconds=" + this.f3092f + ", networkConnectionInfo=" + this.f3093g + "}";
    }
}
