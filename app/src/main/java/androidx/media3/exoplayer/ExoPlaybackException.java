package androidx.media3.exoplayer;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ExoPlaybackException extends PlaybackException {

    @UnstableApi
    public static final int TYPE_REMOTE = 3;

    @UnstableApi
    public static final int TYPE_RENDERER = 1;

    @UnstableApi
    public static final int TYPE_SOURCE = 0;

    @UnstableApi
    public static final int TYPE_UNEXPECTED = 2;
    final boolean isRecoverable;

    @UnstableApi
    public final MediaSource.MediaPeriodId mediaPeriodId;

    @UnstableApi
    public final Format rendererFormat;

    @UnstableApi
    public final int rendererFormatSupport;

    @UnstableApi
    public final int rendererIndex;

    @UnstableApi
    public final String rendererName;

    @UnstableApi
    public final int type;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    @UnstableApi
    public @interface Type {
    }

    private ExoPlaybackException(int i2, Throwable th, int i7) {
        this(i2, th, null, i7, null, -1, null, 4, null, false);
    }

    @UnstableApi
    public static ExoPlaybackException createForRemote(String str) {
        return new ExoPlaybackException(3, null, str, 1001, null, -1, null, 4, null, false);
    }

    @UnstableApi
    @Deprecated
    public static ExoPlaybackException createForRenderer(Throwable th, String str, int i2, Format format, int i7, boolean z6, int i8) {
        return createForRenderer(th, str, i2, format, i7, null, z6, i8);
    }

    @UnstableApi
    public static ExoPlaybackException createForSource(IOException iOException, int i2) {
        return new ExoPlaybackException(0, iOException, i2);
    }

    @UnstableApi
    @Deprecated
    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException) {
        return createForUnexpected(runtimeException, 1000);
    }

    private static String deriveMessage(int i2, String str, String str2, int i7, Format format, int i8) {
        String str3;
        if (i2 == 0) {
            str3 = "Source error";
        } else if (i2 != 1) {
            str3 = i2 != 3 ? "Unexpected runtime error" : "Remote error";
        } else {
            str3 = str2 + " error, index=" + i7 + ", format=" + format + ", format_supported=" + Util.getFormatSupportString(i8);
        }
        return !TextUtils.isEmpty(str) ? A.i.C(str3, ": ", str) : str3;
    }

    public ExoPlaybackException copyWithMediaPeriodId(MediaSource.MediaPeriodId mediaPeriodId) {
        return new ExoPlaybackException((String) Util.castNonNull(getMessage()), getCause(), this.errorCode, this.type, this.rendererName, this.rendererIndex, this.rendererFormat, this.rendererFormatSupport, mediaPeriodId, this.timestampMs, this.isRecoverable);
    }

    @Override // androidx.media3.common.PlaybackException
    public boolean errorInfoEquals(PlaybackException playbackException) {
        if (!super.errorInfoEquals(playbackException)) {
            return false;
        }
        ExoPlaybackException exoPlaybackException = (ExoPlaybackException) Util.castNonNull(playbackException);
        return this.type == exoPlaybackException.type && Objects.equals(this.rendererName, exoPlaybackException.rendererName) && this.rendererIndex == exoPlaybackException.rendererIndex && Objects.equals(this.rendererFormat, exoPlaybackException.rendererFormat) && this.rendererFormatSupport == exoPlaybackException.rendererFormatSupport && Objects.equals(this.mediaPeriodId, exoPlaybackException.mediaPeriodId) && this.isRecoverable == exoPlaybackException.isRecoverable;
    }

    @UnstableApi
    public Exception getRendererException() {
        P3.v.checkState(this.type == 1);
        return (Exception) P3.v.checkNotNull(getCause());
    }

    @UnstableApi
    public IOException getSourceException() {
        P3.v.checkState(this.type == 0);
        return (IOException) P3.v.checkNotNull(getCause());
    }

    @UnstableApi
    public RuntimeException getUnexpectedException() {
        P3.v.checkState(this.type == 2);
        return (RuntimeException) P3.v.checkNotNull(getCause());
    }

    private ExoPlaybackException(int i2, Throwable th, String str, int i7, String str2, int i8, Format format, int i9, MediaSource.MediaPeriodId mediaPeriodId, boolean z6) {
        this(deriveMessage(i2, str, str2, i8, format, i9), th, i7, i2, str2, i8, format, i9, mediaPeriodId, SystemClock.elapsedRealtime(), z6);
    }

    @UnstableApi
    public static ExoPlaybackException createForRenderer(Throwable th, String str, int i2, Format format, int i7, MediaSource.MediaPeriodId mediaPeriodId, boolean z6, int i8) {
        if (format == null) {
            i7 = 4;
        }
        return new ExoPlaybackException(1, th, null, i8, str, i2, format, i7, mediaPeriodId, z6);
    }

    @UnstableApi
    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException, int i2) {
        return new ExoPlaybackException(2, runtimeException, i2);
    }

    private ExoPlaybackException(String str, Throwable th, int i2, int i7, String str2, int i8, Format format, int i9, MediaSource.MediaPeriodId mediaPeriodId, long j7, boolean z6) {
        super(str, th, i2, Bundle.EMPTY, j7);
        P3.v.checkArgument(!z6 || i7 == 1);
        P3.v.checkArgument(th != null || i7 == 3);
        this.type = i7;
        this.rendererName = str2;
        this.rendererIndex = i8;
        this.rendererFormat = format;
        this.rendererFormatSupport = i9;
        this.mediaPeriodId = mediaPeriodId;
        this.isRecoverable = z6;
    }
}
