package androidx.media3.common;

import android.util.Pair;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.UnstableApi;
import java.util.List;

@UnstableApi
/* loaded from: classes.dex */
public interface VideoCompositorSettings {
    public static final VideoCompositorSettings DEFAULT = new VideoCompositorSettings() { // from class: androidx.media3.common.VideoCompositorSettings.1
        @Override // androidx.media3.common.VideoCompositorSettings
        public Size getOutputSize(List<Size> list) {
            return list.get(0);
        }

        @Override // androidx.media3.common.VideoCompositorSettings
        public OverlaySettings getOverlaySettings(int i2, long j7) {
            return new OverlaySettings() { // from class: androidx.media3.common.VideoCompositorSettings.1.1
                @Override // androidx.media3.common.OverlaySettings
                public final /* synthetic */ float getAlphaScale() {
                    return f.a(this);
                }

                @Override // androidx.media3.common.OverlaySettings
                public final /* synthetic */ Pair getBackgroundFrameAnchor() {
                    return f.b(this);
                }

                @Override // androidx.media3.common.OverlaySettings
                public final /* synthetic */ float getHdrLuminanceMultiplier() {
                    return f.c(this);
                }

                @Override // androidx.media3.common.OverlaySettings
                public final /* synthetic */ Pair getOverlayFrameAnchor() {
                    return f.d(this);
                }

                @Override // androidx.media3.common.OverlaySettings
                public final /* synthetic */ float getRotationDegrees() {
                    return f.e(this);
                }

                @Override // androidx.media3.common.OverlaySettings
                public final /* synthetic */ Pair getScale() {
                    return f.f(this);
                }
            };
        }
    };

    Size getOutputSize(List<Size> list);

    OverlaySettings getOverlaySettings(int i2, long j7);
}
