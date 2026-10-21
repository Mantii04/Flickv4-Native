package androidx.datastore.preferences.protobuf;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Writer$FieldOrder {

    /* renamed from: b, reason: collision with root package name */
    public static final Writer$FieldOrder f5834b;

    /* renamed from: e, reason: collision with root package name */
    public static final Writer$FieldOrder f5835e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ Writer$FieldOrder[] f5836f;

    static {
        Writer$FieldOrder writer$FieldOrder = new Writer$FieldOrder("ASCENDING", 0);
        f5834b = writer$FieldOrder;
        Writer$FieldOrder writer$FieldOrder2 = new Writer$FieldOrder("DESCENDING", 1);
        f5835e = writer$FieldOrder2;
        f5836f = new Writer$FieldOrder[]{writer$FieldOrder, writer$FieldOrder2};
    }

    public static Writer$FieldOrder valueOf(String str) {
        return (Writer$FieldOrder) Enum.valueOf(Writer$FieldOrder.class, str);
    }

    public static Writer$FieldOrder[] values() {
        return (Writer$FieldOrder[]) f5836f.clone();
    }
}
