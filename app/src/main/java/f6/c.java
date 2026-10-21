package f6;

import kotlin.jvm.internal.j;
import okio.SegmentedByteString;

/* loaded from: classes2.dex */
public abstract class c {
    public static final int binarySearch(int[] iArr, int i2, int i7, int i8) {
        j.checkNotNullParameter(iArr, "<this>");
        int i9 = i8 - 1;
        while (i7 <= i9) {
            int i10 = (i7 + i9) >>> 1;
            int i11 = iArr[i10];
            if (i11 < i2) {
                i7 = i10 + 1;
            } else {
                if (i11 <= i2) {
                    return i10;
                }
                i9 = i10 - 1;
            }
        }
        return (-i7) - 1;
    }

    public static final int segment(SegmentedByteString segmentedByteString, int i2) {
        j.checkNotNullParameter(segmentedByteString, "<this>");
        int binarySearch = binarySearch(segmentedByteString.getDirectory$okio(), i2 + 1, 0, segmentedByteString.getSegments$okio().length);
        return binarySearch >= 0 ? binarySearch : ~binarySearch;
    }
}
