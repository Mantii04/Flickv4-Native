package androidx.media3.exoplayer.trackselection;

import android.util.Pair;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.RendererConfiguration;
import androidx.media3.exoplayer.X;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public abstract class MappingTrackSelector extends TrackSelector {
    private MappedTrackInfo currentMappedTrackInfo;

    private static int findRenderer(RendererCapabilities[] rendererCapabilitiesArr, TrackGroup trackGroup, int[] iArr, boolean z6) throws ExoPlaybackException {
        int length = rendererCapabilitiesArr.length;
        int i2 = 0;
        boolean z7 = true;
        for (int i7 = 0; i7 < rendererCapabilitiesArr.length; i7++) {
            RendererCapabilities rendererCapabilities = rendererCapabilitiesArr[i7];
            int i8 = 0;
            for (int i9 = 0; i9 < trackGroup.length; i9++) {
                i8 = Math.max(i8, X.k(rendererCapabilities.supportsFormat(trackGroup.getFormat(i9))));
            }
            boolean z8 = iArr[i7] == 0;
            if (i8 > i2 || (i8 == i2 && z6 && !z7 && z8)) {
                length = i7;
                z7 = z8;
                i2 = i8;
            }
        }
        return length;
    }

    private static int[] getFormatSupport(RendererCapabilities rendererCapabilities, TrackGroup trackGroup) throws ExoPlaybackException {
        int[] iArr = new int[trackGroup.length];
        for (int i2 = 0; i2 < trackGroup.length; i2++) {
            iArr[i2] = rendererCapabilities.supportsFormat(trackGroup.getFormat(i2));
        }
        return iArr;
    }

    private static int[] getMixedMimeTypeAdaptationSupports(RendererCapabilities[] rendererCapabilitiesArr) throws ExoPlaybackException {
        int length = rendererCapabilitiesArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = rendererCapabilitiesArr[i2].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    public final MappedTrackInfo getCurrentMappedTrackInfo() {
        return this.currentMappedTrackInfo;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public final void onSelectionActivated(Object obj) {
        this.currentMappedTrackInfo = (MappedTrackInfo) obj;
    }

    public abstract Pair<RendererConfiguration[], ExoTrackSelection[]> selectTracks(MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) throws ExoPlaybackException;

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public final TrackSelectorResult selectTracks(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) throws ExoPlaybackException {
        int[] iArr = new int[rendererCapabilitiesArr.length + 1];
        int length = rendererCapabilitiesArr.length + 1;
        TrackGroup[][] trackGroupArr = new TrackGroup[length][];
        int[][][] iArr2 = new int[rendererCapabilitiesArr.length + 1][][];
        for (int i2 = 0; i2 < length; i2++) {
            int i7 = trackGroupArray.length;
            trackGroupArr[i2] = new TrackGroup[i7];
            iArr2[i2] = new int[i7][];
        }
        int[] mixedMimeTypeAdaptationSupports = getMixedMimeTypeAdaptationSupports(rendererCapabilitiesArr);
        for (int i8 = 0; i8 < trackGroupArray.length; i8++) {
            TrackGroup trackGroup = trackGroupArray.get(i8);
            int findRenderer = findRenderer(rendererCapabilitiesArr, trackGroup, iArr, trackGroup.type == 5);
            int[] formatSupport = findRenderer == rendererCapabilitiesArr.length ? new int[trackGroup.length] : getFormatSupport(rendererCapabilitiesArr[findRenderer], trackGroup);
            int i9 = iArr[findRenderer];
            trackGroupArr[findRenderer][i9] = trackGroup;
            iArr2[findRenderer][i9] = formatSupport;
            iArr[findRenderer] = i9 + 1;
        }
        TrackGroupArray[] trackGroupArrayArr = new TrackGroupArray[rendererCapabilitiesArr.length];
        String[] strArr = new String[rendererCapabilitiesArr.length];
        int[] iArr3 = new int[rendererCapabilitiesArr.length];
        for (int i10 = 0; i10 < rendererCapabilitiesArr.length; i10++) {
            int i11 = iArr[i10];
            trackGroupArrayArr[i10] = new TrackGroupArray((TrackGroup[]) Util.nullSafeArrayCopy(trackGroupArr[i10], i11));
            iArr2[i10] = (int[][]) Util.nullSafeArrayCopy(iArr2[i10], i11);
            strArr[i10] = rendererCapabilitiesArr[i10].getName();
            iArr3[i10] = rendererCapabilitiesArr[i10].getTrackType();
        }
        MappedTrackInfo mappedTrackInfo = new MappedTrackInfo(strArr, iArr3, trackGroupArrayArr, mixedMimeTypeAdaptationSupports, iArr2, new TrackGroupArray((TrackGroup[]) Util.nullSafeArrayCopy(trackGroupArr[rendererCapabilitiesArr.length], iArr[rendererCapabilitiesArr.length])));
        Pair<RendererConfiguration[], ExoTrackSelection[]> selectTracks = selectTracks(mappedTrackInfo, iArr2, mixedMimeTypeAdaptationSupports, mediaPeriodId, timeline);
        return new TrackSelectorResult((RendererConfiguration[]) selectTracks.first, (ExoTrackSelection[]) selectTracks.second, TrackSelectionUtil.buildTracks(mappedTrackInfo, (TrackSelection[]) selectTracks.second), mappedTrackInfo);
    }

    public static final class MappedTrackInfo {
        public static final int RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS = 2;
        public static final int RENDERER_SUPPORT_NO_TRACKS = 0;
        public static final int RENDERER_SUPPORT_PLAYABLE_TRACKS = 3;
        public static final int RENDERER_SUPPORT_UNSUPPORTED_TRACKS = 1;
        private final int rendererCount;
        private final int[][][] rendererFormatSupports;
        private final int[] rendererMixedMimeTypeAdaptiveSupports;
        private final String[] rendererNames;
        private final TrackGroupArray[] rendererTrackGroups;
        private final int[] rendererTrackTypes;
        private final TrackGroupArray unmappedTrackGroups;

        @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface RendererSupport {
        }

        public MappedTrackInfo(String[] strArr, int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.rendererNames = strArr;
            this.rendererTrackTypes = iArr;
            this.rendererTrackGroups = trackGroupArrayArr;
            this.rendererFormatSupports = iArr3;
            this.rendererMixedMimeTypeAdaptiveSupports = iArr2;
            this.unmappedTrackGroups = trackGroupArray;
            this.rendererCount = iArr.length;
        }

        public int getAdaptiveSupport(int i2, int i7, boolean z6) {
            int i8 = this.rendererTrackGroups[i2].get(i7).length;
            int[] iArr = new int[i8];
            int i9 = 0;
            for (int i10 = 0; i10 < i8; i10++) {
                int trackSupport = getTrackSupport(i2, i7, i10);
                if (trackSupport == 4 || (z6 && trackSupport == 3)) {
                    iArr[i9] = i10;
                    i9++;
                }
            }
            return getAdaptiveSupport(i2, i7, Arrays.copyOf(iArr, i9));
        }

        public int getCapabilities(int i2, int i7, int i8) {
            return this.rendererFormatSupports[i2][i7][i8];
        }

        public int getRendererCount() {
            return this.rendererCount;
        }

        public String getRendererName(int i2) {
            return this.rendererNames[i2];
        }

        public int getRendererSupport(int i2) {
            int i7 = 0;
            for (int[] iArr : this.rendererFormatSupports[i2]) {
                for (int i8 : iArr) {
                    int k7 = X.k(i8);
                    int i9 = 1;
                    if (k7 != 0 && k7 != 1 && k7 != 2) {
                        if (k7 != 3) {
                            if (k7 == 4) {
                                return 3;
                            }
                            throw new IllegalStateException();
                        }
                        i9 = 2;
                    }
                    i7 = Math.max(i7, i9);
                }
            }
            return i7;
        }

        public int getRendererType(int i2) {
            return this.rendererTrackTypes[i2];
        }

        public TrackGroupArray getTrackGroups(int i2) {
            return this.rendererTrackGroups[i2];
        }

        public int getTrackSupport(int i2, int i7, int i8) {
            return X.k(getCapabilities(i2, i7, i8));
        }

        public int getTypeSupport(int i2) {
            int i7 = 0;
            for (int i8 = 0; i8 < this.rendererCount; i8++) {
                if (this.rendererTrackTypes[i8] == i2) {
                    i7 = Math.max(i7, getRendererSupport(i8));
                }
            }
            return i7;
        }

        public TrackGroupArray getUnmappedTrackGroups() {
            return this.unmappedTrackGroups;
        }

        public int getAdaptiveSupport(int i2, int i7, int[] iArr) {
            int i8 = 0;
            int i9 = 16;
            String str = null;
            boolean z6 = false;
            int i10 = 0;
            while (i8 < iArr.length) {
                String str2 = this.rendererTrackGroups[i2].get(i7).getFormat(iArr[i8]).sampleMimeType;
                int i11 = i10 + 1;
                if (i10 == 0) {
                    str = str2;
                } else {
                    z6 |= !Objects.equals(str, str2);
                }
                i9 = Math.min(i9, X.h(this.rendererFormatSupports[i2][i7][i8]));
                i8++;
                i10 = i11;
            }
            return z6 ? Math.min(i9, this.rendererMixedMimeTypeAdaptiveSupports[i2]) : i9;
        }
    }
}
