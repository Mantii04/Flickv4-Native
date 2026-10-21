package androidx.datastore.preferences.protobuf;

/* renamed from: androidx.datastore.preferences.protobuf.j0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0424j0 implements X {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0406a0 f5870a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5871b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f5872c;

    /* renamed from: d, reason: collision with root package name */
    public final int f5873d;

    public C0424j0(InterfaceC0406a0 interfaceC0406a0, String str, Object[] objArr) {
        this.f5870a = interfaceC0406a0;
        this.f5871b = str;
        this.f5872c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f5873d = charAt;
            return;
        }
        int i2 = charAt & 8191;
        int i7 = 13;
        int i8 = 1;
        while (true) {
            int i9 = i8 + 1;
            char charAt2 = str.charAt(i8);
            if (charAt2 < 55296) {
                this.f5873d = i2 | (charAt2 << i7);
                return;
            } else {
                i2 |= (charAt2 & 8191) << i7;
                i7 += 13;
                i8 = i9;
            }
        }
    }

    public InterfaceC0406a0 getDefaultInstance() {
        return this.f5870a;
    }

    public ProtoSyntax getSyntax() {
        return (this.f5873d & 1) == 1 ? ProtoSyntax.f5802b : ProtoSyntax.f5803e;
    }

    public boolean isMessageSetWireFormat() {
        return (this.f5873d & 2) == 2;
    }
}
