package p;

import java.util.ConcurrentModificationException;
import q.AbstractC1506a;

/* loaded from: classes.dex */
public abstract class j {
    public static final <E> void allocArrays(i iVar, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(iVar, "<this>");
        iVar.setHashes$collection(new int[i2]);
        iVar.setArray$collection(new Object[i2]);
    }

    public static final <E> int binarySearchInternal(i iVar, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(iVar, "<this>");
        try {
            return AbstractC1506a.binarySearch(iVar.getHashes$collection(), iVar.get_size$collection(), i2);
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public static final <E> int indexOf(i iVar, Object obj, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(iVar, "<this>");
        int i7 = iVar.get_size$collection();
        if (i7 == 0) {
            return -1;
        }
        int binarySearchInternal = binarySearchInternal(iVar, i2);
        if (binarySearchInternal < 0 || kotlin.jvm.internal.j.areEqual(obj, iVar.getArray$collection()[binarySearchInternal])) {
            return binarySearchInternal;
        }
        int i8 = binarySearchInternal + 1;
        while (i8 < i7 && iVar.getHashes$collection()[i8] == i2) {
            if (kotlin.jvm.internal.j.areEqual(obj, iVar.getArray$collection()[i8])) {
                return i8;
            }
            i8++;
        }
        for (int i9 = binarySearchInternal - 1; i9 >= 0 && iVar.getHashes$collection()[i9] == i2; i9--) {
            if (kotlin.jvm.internal.j.areEqual(obj, iVar.getArray$collection()[i9])) {
                return i9;
            }
        }
        return ~i8;
    }

    public static final <E> int indexOfNull(i iVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(iVar, "<this>");
        return indexOf(iVar, null, 0);
    }
}
