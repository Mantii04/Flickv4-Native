package w5;

import java.util.Map;
import kotlin.collections.builders.MapBuilder;

/* renamed from: w5.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1787g implements Map.Entry, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public final MapBuilder f20685b;

    /* renamed from: e, reason: collision with root package name */
    public final int f20686e;

    public C1787g(MapBuilder<Object, Object> map, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(map, "map");
        this.f20685b = map;
        this.f20686e = i2;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return kotlin.jvm.internal.j.areEqual(entry.getKey(), getKey()) && kotlin.jvm.internal.j.areEqual(entry.getValue(), getValue());
    }

    @Override // java.util.Map.Entry
    public Object getKey() {
        Object[] objArr;
        objArr = this.f20685b.f17410b;
        return objArr[this.f20686e];
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        Object[] objArr;
        objArr = this.f20685b.f17411e;
        kotlin.jvm.internal.j.checkNotNull(objArr);
        return objArr[this.f20686e];
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        Object key = getKey();
        int hashCode = key != null ? key.hashCode() : 0;
        Object value = getValue();
        return hashCode ^ (value != null ? value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        MapBuilder mapBuilder = this.f20685b;
        mapBuilder.checkIsMutable$kotlin_stdlib();
        Object[] access$allocateValuesArray = MapBuilder.access$allocateValuesArray(mapBuilder);
        int i2 = this.f20686e;
        Object obj2 = access$allocateValuesArray[i2];
        access$allocateValuesArray[i2] = obj;
        return obj2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getKey());
        sb.append('=');
        sb.append(getValue());
        return sb.toString();
    }
}
