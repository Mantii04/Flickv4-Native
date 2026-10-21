package androidx.datastore.preferences.protobuf;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ProtoSyntax {

    /* renamed from: b, reason: collision with root package name */
    public static final ProtoSyntax f5802b;

    /* renamed from: e, reason: collision with root package name */
    public static final ProtoSyntax f5803e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ ProtoSyntax[] f5804f;

    static {
        ProtoSyntax protoSyntax = new ProtoSyntax("PROTO2", 0);
        f5802b = protoSyntax;
        ProtoSyntax protoSyntax2 = new ProtoSyntax("PROTO3", 1);
        f5803e = protoSyntax2;
        f5804f = new ProtoSyntax[]{protoSyntax, protoSyntax2};
    }

    public static ProtoSyntax valueOf(String str) {
        return (ProtoSyntax) Enum.valueOf(ProtoSyntax.class, str);
    }

    public static ProtoSyntax[] values() {
        return (ProtoSyntax[]) f5804f.clone();
    }
}
