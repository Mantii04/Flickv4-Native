package n1;

import java.util.Set;
import v5.AbstractC1763A;
import v5.AbstractC1764B;

/* loaded from: classes.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public final r f18840a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f18841b;

    /* renamed from: c, reason: collision with root package name */
    public final String[] f18842c;

    /* renamed from: d, reason: collision with root package name */
    public final Set f18843d;

    public s(r observer, int[] tableIds, String[] tableNames) {
        kotlin.jvm.internal.j.checkNotNullParameter(observer, "observer");
        kotlin.jvm.internal.j.checkNotNullParameter(tableIds, "tableIds");
        kotlin.jvm.internal.j.checkNotNullParameter(tableNames, "tableNames");
        this.f18840a = observer;
        this.f18841b = tableIds;
        this.f18842c = tableNames;
        this.f18843d = !(tableNames.length == 0) ? AbstractC1763A.setOf(tableNames[0]) : AbstractC1764B.emptySet();
        if (tableIds.length != tableNames.length) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public final int[] getTableIds$room_runtime_release() {
        return this.f18841b;
    }

    public final void notifyByTableInvalidStatus$room_runtime_release(Set<Integer> invalidatedTablesIds) {
        Set<String> emptySet;
        kotlin.jvm.internal.j.checkNotNullParameter(invalidatedTablesIds, "invalidatedTablesIds");
        int[] iArr = this.f18841b;
        int length = iArr.length;
        if (length != 0) {
            int i2 = 0;
            if (length != 1) {
                Set createSetBuilder = AbstractC1763A.createSetBuilder();
                int length2 = iArr.length;
                int i7 = 0;
                while (i2 < length2) {
                    int i8 = i7 + 1;
                    if (invalidatedTablesIds.contains(Integer.valueOf(iArr[i2]))) {
                        createSetBuilder.add(this.f18842c[i7]);
                    }
                    i2++;
                    i7 = i8;
                }
                emptySet = AbstractC1763A.build(createSetBuilder);
            } else {
                emptySet = invalidatedTablesIds.contains(Integer.valueOf(iArr[0])) ? this.f18843d : AbstractC1764B.emptySet();
            }
        } else {
            emptySet = AbstractC1764B.emptySet();
        }
        if (emptySet.isEmpty()) {
            return;
        }
        this.f18840a.onInvalidated(emptySet);
    }

    public final void notifyByTableNames$room_runtime_release(String[] tables) {
        Set<String> emptySet;
        kotlin.jvm.internal.j.checkNotNullParameter(tables, "tables");
        String[] strArr = this.f18842c;
        int length = strArr.length;
        if (length == 0) {
            emptySet = AbstractC1764B.emptySet();
        } else if (length == 1) {
            int length2 = tables.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    emptySet = AbstractC1764B.emptySet();
                    break;
                } else {
                    if (P5.p.equals(tables[i2], strArr[0], true)) {
                        emptySet = this.f18843d;
                        break;
                    }
                    i2++;
                }
            }
        } else {
            Set createSetBuilder = AbstractC1763A.createSetBuilder();
            for (String str : tables) {
                for (String str2 : strArr) {
                    if (P5.p.equals(str2, str, true)) {
                        createSetBuilder.add(str2);
                    }
                }
            }
            emptySet = AbstractC1763A.build(createSetBuilder);
        }
        if (emptySet.isEmpty()) {
            return;
        }
        this.f18840a.onInvalidated(emptySet);
    }
}
