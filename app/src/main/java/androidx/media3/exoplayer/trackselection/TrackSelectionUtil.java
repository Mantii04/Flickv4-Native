package androidx.media3.exoplayer.trackselection;

import Q3.C0248s;
import android.os.SystemClock;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

@UnstableApi
/* loaded from: classes.dex */
public final class TrackSelectionUtil {

    public interface AdaptiveTrackSelectionFactory {
        ExoTrackSelection createAdaptiveTrackSelection(ExoTrackSelection.Definition definition);
    }

    private TrackSelectionUtil() {
    }

    public static Tracks buildTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, TrackSelection[] trackSelectionArr) {
        List[] listArr = new List[trackSelectionArr.length];
        for (int i2 = 0; i2 < trackSelectionArr.length; i2++) {
            TrackSelection trackSelection = trackSelectionArr[i2];
            listArr[i2] = trackSelection != null ? ImmutableList.of(trackSelection) : ImmutableList.of();
        }
        return buildTracks(mappedTrackInfo, (List<? extends TrackSelection>[]) listArr);
    }

    public static LoadErrorHandlingPolicy.FallbackOptions createFallbackOptions(ExoTrackSelection exoTrackSelection) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int length = exoTrackSelection.length();
        int i2 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            if (exoTrackSelection.isTrackExcluded(i7, elapsedRealtime)) {
                i2++;
            }
        }
        return new LoadErrorHandlingPolicy.FallbackOptions(1, 0, length, i2);
    }

    public static ExoTrackSelection[] createTrackSelectionsForDefinitions(ExoTrackSelection.Definition[] definitionArr, AdaptiveTrackSelectionFactory adaptiveTrackSelectionFactory) {
        ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr.length];
        boolean z6 = false;
        for (int i2 = 0; i2 < definitionArr.length; i2++) {
            ExoTrackSelection.Definition definition = definitionArr[i2];
            if (definition != null) {
                int[] iArr = definition.tracks;
                if (iArr.length <= 1 || z6) {
                    exoTrackSelectionArr[i2] = new FixedTrackSelection(definition.group, iArr[0], definition.type);
                } else {
                    exoTrackSelectionArr[i2] = adaptiveTrackSelectionFactory.createAdaptiveTrackSelection(definition);
                    z6 = true;
                }
            }
        }
        return exoTrackSelectionArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000c, code lost:
    
        if ((r6 > r7) != (r4 > r5)) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Point getMaxVideoSizeInViewport(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto Lf
            r3 = 0
            r0 = 1
            if (r6 <= r7) goto L8
            r1 = r0
            goto L9
        L8:
            r1 = r3
        L9:
            if (r4 <= r5) goto Lc
            r3 = r0
        Lc:
            if (r1 == r3) goto Lf
            goto L12
        Lf:
            r2 = r5
            r5 = r4
            r4 = r2
        L12:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L22
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = androidx.media3.common.util.Util.ceilDivide(r0, r6)
            r3.<init>(r5, r4)
            return r3
        L22:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = androidx.media3.common.util.Util.ceilDivide(r3, r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.trackselection.TrackSelectionUtil.getMaxVideoSizeInViewport(boolean, int, int, int, int):android.graphics.Point");
    }

    @Deprecated
    public static DefaultTrackSelector.Parameters updateParametersWithOverride(DefaultTrackSelector.Parameters parameters, int i2, TrackGroupArray trackGroupArray, boolean z6, DefaultTrackSelector.SelectionOverride selectionOverride) {
        DefaultTrackSelector.Parameters.Builder rendererDisabled = parameters.buildUpon().clearSelectionOverrides(i2).setRendererDisabled(i2, z6);
        if (selectionOverride != null) {
            rendererDisabled.setSelectionOverride(i2, trackGroupArray, selectionOverride);
        }
        return rendererDisabled.build();
    }

    public static Tracks buildTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, List<? extends TrackSelection>[] listArr) {
        boolean z6;
        C0248s c0248s = new C0248s();
        for (int i2 = 0; i2 < mappedTrackInfo.getRendererCount(); i2++) {
            TrackGroupArray trackGroups = mappedTrackInfo.getTrackGroups(i2);
            List<? extends TrackSelection> list = listArr[i2];
            for (int i7 = 0; i7 < trackGroups.length; i7++) {
                TrackGroup trackGroup = trackGroups.get(i7);
                boolean z7 = mappedTrackInfo.getAdaptiveSupport(i2, i7, false) != 0;
                int i8 = trackGroup.length;
                int[] iArr = new int[i8];
                boolean[] zArr = new boolean[i8];
                for (int i9 = 0; i9 < trackGroup.length; i9++) {
                    iArr[i9] = mappedTrackInfo.getTrackSupport(i2, i7, i9);
                    int i10 = 0;
                    while (true) {
                        if (i10 >= list.size()) {
                            z6 = false;
                            break;
                        }
                        TrackSelection trackSelection = list.get(i10);
                        if (trackSelection.getTrackGroup().equals(trackGroup) && trackSelection.indexOf(i9) != -1) {
                            z6 = true;
                            break;
                        }
                        i10++;
                    }
                    zArr[i9] = z6;
                }
                c0248s.add((Object) new Tracks.Group(trackGroup, z7, iArr, zArr));
            }
        }
        TrackGroupArray unmappedTrackGroups = mappedTrackInfo.getUnmappedTrackGroups();
        for (int i11 = 0; i11 < unmappedTrackGroups.length; i11++) {
            TrackGroup trackGroup2 = unmappedTrackGroups.get(i11);
            int[] iArr2 = new int[trackGroup2.length];
            Arrays.fill(iArr2, 0);
            c0248s.add((Object) new Tracks.Group(trackGroup2, false, iArr2, new boolean[trackGroup2.length]));
        }
        return new Tracks(c0248s.build());
    }
}
