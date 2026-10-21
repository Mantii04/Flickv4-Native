package androidx.media3.exoplayer.trackselection;

import P3.v;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.RendererConfiguration;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public final class TrackSelectorResult {
    public final Object info;
    public final int length;
    public final RendererConfiguration[] rendererConfigurations;
    public final ExoTrackSelection[] selections;
    public final Tracks tracks;

    @Deprecated
    public TrackSelectorResult(RendererConfiguration[] rendererConfigurationArr, ExoTrackSelection[] exoTrackSelectionArr, Object obj) {
        this(rendererConfigurationArr, exoTrackSelectionArr, Tracks.EMPTY, obj);
    }

    public boolean isEquivalent(TrackSelectorResult trackSelectorResult) {
        if (trackSelectorResult == null || trackSelectorResult.selections.length != this.selections.length) {
            return false;
        }
        for (int i2 = 0; i2 < this.selections.length; i2++) {
            if (!isEquivalent(trackSelectorResult, i2)) {
                return false;
            }
        }
        return true;
    }

    public boolean isRendererEnabled(int i2) {
        return this.rendererConfigurations[i2] != null;
    }

    public TrackSelectorResult(RendererConfiguration[] rendererConfigurationArr, ExoTrackSelection[] exoTrackSelectionArr, Tracks tracks, Object obj) {
        v.checkArgument(rendererConfigurationArr.length == exoTrackSelectionArr.length);
        this.rendererConfigurations = rendererConfigurationArr;
        this.selections = (ExoTrackSelection[]) exoTrackSelectionArr.clone();
        this.tracks = tracks;
        this.info = obj;
        this.length = rendererConfigurationArr.length;
    }

    public boolean isEquivalent(TrackSelectorResult trackSelectorResult, int i2) {
        return trackSelectorResult != null && Objects.equals(this.rendererConfigurations[i2], trackSelectorResult.rendererConfigurations[i2]) && Objects.equals(this.selections[i2], trackSelectorResult.selections[i2]);
    }
}
