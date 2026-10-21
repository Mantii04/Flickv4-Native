package Q3;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSetMultimap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* renamed from: Q3.z, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0255z extends com.google.common.collect.x {
    @Override // com.google.common.collect.x
    public final r a() {
        return ImmutableSet.builderWithExpectedSize(4);
    }

    @Override // com.google.common.collect.x
    public ImmutableSetMultimap<Object, Object> build() {
        Map map = this.f13175a;
        if (map == null) {
            return ImmutableSetMultimap.of();
        }
        Set<Map.Entry> entrySet = map.entrySet();
        if (entrySet.isEmpty()) {
            return ImmutableSetMultimap.of();
        }
        com.google.common.collect.w wVar = new com.google.common.collect.w(entrySet.size());
        int i2 = 0;
        for (Map.Entry entry : entrySet) {
            Object key = entry.getKey();
            ImmutableSet copyOf = ImmutableSet.copyOf((Collection) ((com.google.common.collect.z) entry.getValue()).build());
            if (!copyOf.isEmpty()) {
                wVar.put(key, copyOf);
                i2 = copyOf.size() + i2;
            }
        }
        return new ImmutableSetMultimap<>(wVar.buildOrThrow(), i2);
    }
}
