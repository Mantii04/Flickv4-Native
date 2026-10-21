package androidx.media3.common;

import android.view.View;
import androidx.media3.common.util.UnstableApi;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes.dex */
public final class AdOverlayInfo {
    public static final int PURPOSE_CLOSE_AD = 2;
    public static final int PURPOSE_CONTROLS = 1;
    public static final int PURPOSE_NOT_VISIBLE = 4;
    public static final int PURPOSE_OTHER = 3;
    public final int purpose;
    public final String reasonDetail;
    public final View view;

    public static final class Builder {
        private String detailedReason;
        private final int purpose;
        private final View view;

        public Builder(View view, int i2) {
            this.view = view;
            this.purpose = i2;
        }

        public AdOverlayInfo build() {
            return new AdOverlayInfo(this.view, this.purpose, this.detailedReason);
        }

        public Builder setDetailedReason(String str) {
            this.detailedReason = str;
            return this;
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Purpose {
    }

    @UnstableApi
    @Deprecated
    public AdOverlayInfo(View view, int i2) {
        this(view, i2, null);
    }

    @UnstableApi
    @Deprecated
    public AdOverlayInfo(View view, int i2, String str) {
        this.view = view;
        this.purpose = i2;
        this.reasonDetail = str;
    }
}
