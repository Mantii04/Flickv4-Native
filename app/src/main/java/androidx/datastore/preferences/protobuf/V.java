package androidx.datastore.preferences.protobuf;

import java.util.Map;

/* loaded from: classes.dex */
public final class V {
    public Map<?, ?> forMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    public T forMapMetadata(Object obj) {
        return ((U) obj).f5812a;
    }

    public Map<?, ?> forMutableMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    public int getSerializedSize(int i2, Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        U u6 = (U) obj2;
        int i7 = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry entry : mapFieldLite.entrySet()) {
            i7 += u6.computeMessageSize(i2, entry.getKey(), entry.getValue());
        }
        return i7;
    }

    public boolean isImmutable(Object obj) {
        return !((MapFieldLite) obj).isMutable();
    }

    public Object mergeFrom(Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        MapFieldLite mapFieldLite2 = (MapFieldLite) obj2;
        if (!mapFieldLite2.isEmpty()) {
            if (!mapFieldLite.isMutable()) {
                mapFieldLite = mapFieldLite.mutableCopy();
            }
            mapFieldLite.mergeFrom(mapFieldLite2);
        }
        return mapFieldLite;
    }

    public Object newMapField(Object obj) {
        return MapFieldLite.emptyMapField().mutableCopy();
    }

    public Object toImmutable(Object obj) {
        ((MapFieldLite) obj).makeImmutable();
        return obj;
    }
}
