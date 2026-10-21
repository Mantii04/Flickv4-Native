package androidx.datastore.preferences.protobuf;

/* loaded from: classes.dex */
public final class U {

    /* renamed from: a, reason: collision with root package name */
    public final T f5812a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f5813b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f5814c;

    public U(WireFormat$FieldType wireFormat$FieldType, Object obj, WireFormat$FieldType wireFormat$FieldType2, Object obj2) {
        this.f5812a = new T(wireFormat$FieldType, obj, wireFormat$FieldType2, obj2);
        this.f5813b = obj;
        this.f5814c = obj2;
    }

    public static <K, V> U newDefaultInstance(WireFormat$FieldType wireFormat$FieldType, K k7, WireFormat$FieldType wireFormat$FieldType2, V v6) {
        return new U(wireFormat$FieldType, k7, wireFormat$FieldType2, v6);
    }

    public int computeMessageSize(int i2, Object obj, Object obj2) {
        int computeTagSize = AbstractC0434s.computeTagSize(i2);
        T t6 = this.f5812a;
        int a7 = A.a(t6.f5810c, 2, obj2) + A.a(t6.f5808a, 1, obj);
        return AbstractC0434s.computeUInt32SizeNoTag(a7) + a7 + computeTagSize;
    }
}
