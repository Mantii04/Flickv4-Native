package S2;

import com.google.android.datatransport.Priority;

/* loaded from: classes.dex */
public final class m extends D {

    /* renamed from: a, reason: collision with root package name */
    public String f3354a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f3355b;

    /* renamed from: c, reason: collision with root package name */
    public Priority f3356c;

    @Override // S2.D
    public E build() {
        String str = this.f3354a == null ? " backendName" : "";
        if (this.f3356c == null) {
            str = str.concat(" priority");
        }
        if (str.isEmpty()) {
            return new n(this.f3354a, this.f3355b, this.f3356c);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    @Override // S2.D
    public D setBackendName(String str) {
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f3354a = str;
        return this;
    }

    @Override // S2.D
    public D setExtras(byte[] bArr) {
        this.f3355b = bArr;
        return this;
    }

    @Override // S2.D
    public D setPriority(Priority priority) {
        if (priority == null) {
            throw new NullPointerException("Null priority");
        }
        this.f3356c = priority;
        return this;
    }
}
