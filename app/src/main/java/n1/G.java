package n1;

import android.util.Log;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;
import o1.AbstractC1426b;

/* loaded from: classes.dex */
public final class G {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f18791a = new LinkedHashMap();

    public void addMigrations(AbstractC1426b... migrations) {
        kotlin.jvm.internal.j.checkNotNullParameter(migrations, "migrations");
        for (AbstractC1426b abstractC1426b : migrations) {
            int i2 = abstractC1426b.f19042a;
            LinkedHashMap linkedHashMap = this.f18791a;
            Integer valueOf = Integer.valueOf(i2);
            Object obj = linkedHashMap.get(valueOf);
            if (obj == null) {
                obj = new TreeMap();
                linkedHashMap.put(valueOf, obj);
            }
            TreeMap treeMap = (TreeMap) obj;
            int i7 = abstractC1426b.f19043b;
            if (treeMap.containsKey(Integer.valueOf(i7))) {
                Log.w("ROOM", "Overriding migration " + treeMap.get(Integer.valueOf(i7)) + " with " + abstractC1426b);
            }
            treeMap.put(Integer.valueOf(i7), abstractC1426b);
        }
    }

    public final boolean contains(int i2, int i7) {
        Map<Integer, Map<Integer, AbstractC1426b>> migrations = getMigrations();
        if (!migrations.containsKey(Integer.valueOf(i2))) {
            return false;
        }
        Map<Integer, AbstractC1426b> map = migrations.get(Integer.valueOf(i2));
        if (map == null) {
            map = kotlin.collections.a.emptyMap();
        }
        return map.containsKey(Integer.valueOf(i7));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0074 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<o1.AbstractC1426b> findMigrationPath(int r10, int r11) {
        /*
            r9 = this;
            if (r10 != r11) goto L7
            java.util.List r10 = v5.p.emptyList()
            return r10
        L7:
            r0 = 1
            r1 = 0
            if (r11 <= r10) goto Ld
            r2 = r0
            goto Le
        Ld:
            r2 = r1
        Le:
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
        L13:
            if (r2 == 0) goto L18
            if (r10 >= r11) goto L76
            goto L1a
        L18:
            if (r10 <= r11) goto L76
        L1a:
            java.util.LinkedHashMap r4 = r9.f18791a
            java.lang.Integer r5 = java.lang.Integer.valueOf(r10)
            java.lang.Object r4 = r4.get(r5)
            java.util.TreeMap r4 = (java.util.TreeMap) r4
            if (r4 != 0) goto L29
            goto L74
        L29:
            if (r2 == 0) goto L30
            java.util.NavigableSet r5 = r4.descendingKeySet()
            goto L34
        L30:
            java.util.Set r5 = r4.keySet()
        L34:
            java.util.Iterator r5 = r5.iterator()
        L38:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L71
            java.lang.Object r6 = r5.next()
            java.lang.Integer r6 = (java.lang.Integer) r6
            java.lang.String r7 = "targetVersion"
            if (r2 == 0) goto L56
            int r8 = r10 + 1
            kotlin.jvm.internal.j.checkNotNullExpressionValue(r6, r7)
            int r7 = r6.intValue()
            if (r8 > r7) goto L38
            if (r7 > r11) goto L38
            goto L61
        L56:
            kotlin.jvm.internal.j.checkNotNullExpressionValue(r6, r7)
            int r7 = r6.intValue()
            if (r11 > r7) goto L38
            if (r7 >= r10) goto L38
        L61:
            java.lang.Object r10 = r4.get(r6)
            kotlin.jvm.internal.j.checkNotNull(r10)
            r3.add(r10)
            int r10 = r6.intValue()
            r4 = r0
            goto L72
        L71:
            r4 = r1
        L72:
            if (r4 != 0) goto L13
        L74:
            r10 = 0
            return r10
        L76:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: n1.G.findMigrationPath(int, int):java.util.List");
    }

    public Map<Integer, Map<Integer, AbstractC1426b>> getMigrations() {
        return this.f18791a;
    }
}
