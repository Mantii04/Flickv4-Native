package androidx.media3.common;

import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public final class VideoFrameProcessingException extends Exception {
    public final long presentationTimeUs;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public VideoFrameProcessingException(java.lang.String r2, long r3) {
        /*
            r1 = this;
            java.lang.StringBuilder r2 = b.c.o(r2)
            java.lang.String r0 = getPresentationTimeUsString(r3)
            r2.append(r0)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            r1.presentationTimeUs = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.common.VideoFrameProcessingException.<init>(java.lang.String, long):void");
    }

    public static VideoFrameProcessingException from(Exception exc) {
        return from(exc, C.TIME_UNSET);
    }

    private static String getPresentationTimeUsString(long j7) {
        return j7 == C.TIME_UNSET ? " @UNSET" : A.i.i(" @", j7);
    }

    public static VideoFrameProcessingException from(Exception exc, long j7) {
        return exc instanceof VideoFrameProcessingException ? (VideoFrameProcessingException) exc : new VideoFrameProcessingException(exc, j7);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public VideoFrameProcessingException(java.lang.String r2, java.lang.Throwable r3, long r4) {
        /*
            r1 = this;
            java.lang.StringBuilder r2 = b.c.o(r2)
            java.lang.String r0 = getPresentationTimeUsString(r4)
            r2.append(r0)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2, r3)
            r1.presentationTimeUs = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.common.VideoFrameProcessingException.<init>(java.lang.String, java.lang.Throwable, long):void");
    }

    public VideoFrameProcessingException(String str) {
        this(str, C.TIME_UNSET);
    }

    public VideoFrameProcessingException(String str, Throwable th) {
        this(str, th, C.TIME_UNSET);
    }

    public VideoFrameProcessingException(Throwable th) {
        this(th, C.TIME_UNSET);
    }

    public VideoFrameProcessingException(Throwable th, long j7) {
        super(getPresentationTimeUsString(j7), th);
        this.presentationTimeUs = j7;
    }
}
