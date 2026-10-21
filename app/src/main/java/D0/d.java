package D0;

import androidx.media3.common.MimeTypes;
import java.util.List;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final long f847a;

    /* renamed from: b, reason: collision with root package name */
    public final List f848b;

    public d(long j7, List<c> list) {
        this.f847a = j7;
        this.f848b = list;
    }

    public E0.c getMotionPhotoMetadata(long j7) {
        E0.c cVar;
        long j8;
        List list = this.f848b;
        E0.c cVar2 = null;
        if (list.size() < 2) {
            return null;
        }
        boolean z6 = true;
        int size = list.size() - 1;
        long j9 = j7;
        long j10 = -1;
        long j11 = -1;
        long j12 = -1;
        long j13 = -1;
        while (size >= 0) {
            c cVar3 = (c) list.get(size);
            boolean z7 = (cVar3.f844a.equals(MimeTypes.VIDEO_MP4) || cVar3.f844a.equals(MimeTypes.VIDEO_QUICK_TIME)) ? z6 : false;
            if (size == 0) {
                cVar = cVar2;
                j9 -= cVar3.f846c;
                j8 = 0;
            } else {
                cVar = cVar2;
                j8 = j9 - cVar3.f845b;
            }
            long j14 = j9;
            j9 = j8;
            if (z7 && j9 != j14) {
                j13 = j14 - j9;
                j12 = j9;
            }
            if (size == 0) {
                j11 = j14;
                j10 = j9;
            }
            size--;
            cVar2 = cVar;
            z6 = true;
        }
        return (j12 == -1 || j13 == -1 || j10 == -1 || j11 == -1) ? cVar2 : new E0.c(j10, j11, this.f847a, j12, j13);
    }
}
