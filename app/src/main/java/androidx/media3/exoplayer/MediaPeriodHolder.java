package androidx.media3.exoplayer;

import androidx.media3.common.Timeline;
import androidx.media3.common.util.Log;
import androidx.media3.exoplayer.source.ClippingMediaPeriod;
import androidx.media3.exoplayer.source.EmptySampleStream;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.Allocator;
import java.io.IOException;

/* loaded from: classes.dex */
final class MediaPeriodHolder {
    private static final String TAG = "MediaPeriodHolder";
    public boolean allRenderersInCorrectState;
    public boolean hasEnabledTracks;
    public MediaPeriodInfo info;
    private final boolean[] mayRetainStreamFlags;
    public final MediaPeriod mediaPeriod;
    private final MediaSourceList mediaSourceList;
    private MediaPeriodHolder next;
    public boolean prepareCalled;
    public boolean prepared;
    private final RendererCapabilities[] rendererCapabilities;
    private long rendererPositionOffsetUs;
    public final SampleStream[] sampleStreams;
    public final long targetPreloadBufferDurationUs;
    private TrackGroupArray trackGroups;
    private final TrackSelector trackSelector;
    private TrackSelectorResult trackSelectorResult;
    public final Object uid;

    public interface Factory {
        MediaPeriodHolder create(MediaPeriodInfo mediaPeriodInfo, long j7);
    }

    public MediaPeriodHolder(RendererCapabilities[] rendererCapabilitiesArr, long j7, TrackSelector trackSelector, Allocator allocator, MediaSourceList mediaSourceList, MediaPeriodInfo mediaPeriodInfo, TrackSelectorResult trackSelectorResult, long j8) {
        this.rendererCapabilities = rendererCapabilitiesArr;
        this.rendererPositionOffsetUs = j7;
        this.trackSelector = trackSelector;
        this.mediaSourceList = mediaSourceList;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.id;
        this.uid = mediaPeriodId.periodUid;
        this.info = mediaPeriodInfo;
        this.targetPreloadBufferDurationUs = j8;
        this.trackGroups = TrackGroupArray.EMPTY;
        this.trackSelectorResult = trackSelectorResult;
        this.sampleStreams = new SampleStream[rendererCapabilitiesArr.length];
        this.mayRetainStreamFlags = new boolean[rendererCapabilitiesArr.length];
        this.mediaPeriod = createMediaPeriod(mediaPeriodId, mediaSourceList, allocator, mediaPeriodInfo.startPositionUs, mediaPeriodInfo.endPositionUs, mediaPeriodInfo.isPrecededByTransitionFromSameStream);
    }

    private void associateNoSampleRenderersWithEmptySampleStream(SampleStream[] sampleStreamArr) {
        int i2 = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i2 >= rendererCapabilitiesArr.length) {
                return;
            }
            if (rendererCapabilitiesArr[i2].getTrackType() == -2 && this.trackSelectorResult.isRendererEnabled(i2)) {
                sampleStreamArr[i2] = new EmptySampleStream();
            }
            i2++;
        }
    }

    private static MediaPeriod createMediaPeriod(MediaSource.MediaPeriodId mediaPeriodId, MediaSourceList mediaSourceList, Allocator allocator, long j7, long j8, boolean z6) {
        MediaPeriod createPeriod = mediaSourceList.createPeriod(mediaPeriodId, allocator, j7);
        return j8 != androidx.media3.common.C.TIME_UNSET ? new ClippingMediaPeriod(createPeriod, !z6, 0L, j8) : createPeriod;
    }

    private void disableTrackSelectionsInResult() {
        if (!isLoadingMediaPeriod()) {
            return;
        }
        int i2 = 0;
        while (true) {
            TrackSelectorResult trackSelectorResult = this.trackSelectorResult;
            if (i2 >= trackSelectorResult.length) {
                return;
            }
            boolean isRendererEnabled = trackSelectorResult.isRendererEnabled(i2);
            ExoTrackSelection exoTrackSelection = this.trackSelectorResult.selections[i2];
            if (isRendererEnabled && exoTrackSelection != null) {
                exoTrackSelection.disable();
            }
            i2++;
        }
    }

    private void disassociateNoSampleRenderersWithEmptySampleStream(SampleStream[] sampleStreamArr) {
        int i2 = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i2 >= rendererCapabilitiesArr.length) {
                return;
            }
            if (rendererCapabilitiesArr[i2].getTrackType() == -2) {
                sampleStreamArr[i2] = null;
            }
            i2++;
        }
    }

    private void enableTrackSelectionsInResult() {
        if (!isLoadingMediaPeriod()) {
            return;
        }
        int i2 = 0;
        while (true) {
            TrackSelectorResult trackSelectorResult = this.trackSelectorResult;
            if (i2 >= trackSelectorResult.length) {
                return;
            }
            boolean isRendererEnabled = trackSelectorResult.isRendererEnabled(i2);
            ExoTrackSelection exoTrackSelection = this.trackSelectorResult.selections[i2];
            if (isRendererEnabled && exoTrackSelection != null) {
                exoTrackSelection.enable();
            }
            i2++;
        }
    }

    private boolean isLoadingMediaPeriod() {
        return this.next == null;
    }

    private static void releaseMediaPeriod(MediaSourceList mediaSourceList, MediaPeriod mediaPeriod) {
        try {
            if (mediaPeriod instanceof ClippingMediaPeriod) {
                mediaSourceList.releasePeriod(((ClippingMediaPeriod) mediaPeriod).mediaPeriod);
            } else {
                mediaSourceList.releasePeriod(mediaPeriod);
            }
        } catch (RuntimeException e3) {
            Log.e(TAG, "Period release failed.", e3);
        }
    }

    public long applyTrackSelection(TrackSelectorResult trackSelectorResult, long j7, boolean z6) {
        return applyTrackSelection(trackSelectorResult, j7, z6, new boolean[this.rendererCapabilities.length]);
    }

    public boolean canBeUsedForMediaPeriodInfo(MediaPeriodInfo mediaPeriodInfo) {
        if (!MediaPeriodQueue.areDurationsCompatible(this.info.durationUs, mediaPeriodInfo.durationUs)) {
            return false;
        }
        MediaPeriodInfo mediaPeriodInfo2 = this.info;
        return mediaPeriodInfo2.startPositionUs == mediaPeriodInfo.startPositionUs && mediaPeriodInfo2.id.equals(mediaPeriodInfo.id);
    }

    public void continueLoading(LoadingInfo loadingInfo) {
        P3.v.checkState(isLoadingMediaPeriod());
        this.mediaPeriod.continueLoading(loadingInfo);
    }

    public long getBufferedPositionUs() {
        if (!this.prepared) {
            return this.info.startPositionUs;
        }
        long bufferedPositionUs = this.hasEnabledTracks ? this.mediaPeriod.getBufferedPositionUs() : Long.MIN_VALUE;
        return bufferedPositionUs == Long.MIN_VALUE ? this.info.durationUs : bufferedPositionUs;
    }

    public MediaPeriodHolder getNext() {
        return this.next;
    }

    public long getNextLoadPositionUs() {
        if (this.prepared) {
            return this.mediaPeriod.getNextLoadPositionUs();
        }
        return 0L;
    }

    public long getRendererOffset() {
        return this.rendererPositionOffsetUs;
    }

    public long getStartPositionRendererTime() {
        return this.info.startPositionUs + this.rendererPositionOffsetUs;
    }

    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    public TrackSelectorResult getTrackSelectorResult() {
        return this.trackSelectorResult;
    }

    public void handlePrepared(float f3, Timeline timeline, boolean z6) throws ExoPlaybackException {
        this.prepared = true;
        this.trackGroups = this.mediaPeriod.getTrackGroups();
        TrackSelectorResult selectTracks = selectTracks(f3, timeline, z6);
        MediaPeriodInfo mediaPeriodInfo = this.info;
        long j7 = mediaPeriodInfo.startPositionUs;
        long j8 = mediaPeriodInfo.durationUs;
        if (j8 != androidx.media3.common.C.TIME_UNSET && j7 >= j8) {
            j7 = Math.max(0L, j8 - 1);
        }
        long applyTrackSelection = applyTrackSelection(selectTracks, j7, false);
        long j9 = this.rendererPositionOffsetUs;
        MediaPeriodInfo mediaPeriodInfo2 = this.info;
        this.rendererPositionOffsetUs = (mediaPeriodInfo2.startPositionUs - applyTrackSelection) + j9;
        this.info = mediaPeriodInfo2.copyWithStartPositionUs(applyTrackSelection);
    }

    public boolean hasLoadingError() {
        try {
            if (this.prepared) {
                for (SampleStream sampleStream : this.sampleStreams) {
                    if (sampleStream != null) {
                        sampleStream.maybeThrowError();
                    }
                }
            } else {
                this.mediaPeriod.maybeThrowPrepareError();
            }
            return false;
        } catch (IOException unused) {
            return true;
        }
    }

    public boolean isFullyBuffered() {
        if (this.prepared) {
            return !this.hasEnabledTracks || this.mediaPeriod.getBufferedPositionUs() == Long.MIN_VALUE;
        }
        return false;
    }

    public boolean isFullyPreloaded() {
        if (this.prepared) {
            return isFullyBuffered() || getBufferedPositionUs() - this.info.startPositionUs >= this.targetPreloadBufferDurationUs;
        }
        return false;
    }

    public void prepare(MediaPeriod.Callback callback, long j7) {
        this.prepareCalled = true;
        this.mediaPeriod.prepare(callback, j7);
    }

    public void reevaluateBuffer(long j7) {
        P3.v.checkState(isLoadingMediaPeriod());
        if (this.prepared) {
            this.mediaPeriod.reevaluateBuffer(toPeriodTime(j7));
        }
    }

    public void release() {
        disableTrackSelectionsInResult();
        releaseMediaPeriod(this.mediaSourceList, this.mediaPeriod);
    }

    public TrackSelectorResult selectTracks(float f3, Timeline timeline, boolean z6) throws ExoPlaybackException {
        TrackSelectorResult selectTracks = this.trackSelector.selectTracks(this.rendererCapabilities, getTrackGroups(), this.info.id, timeline);
        for (int i2 = 0; i2 < selectTracks.length; i2++) {
            if (selectTracks.isRendererEnabled(i2)) {
                if (selectTracks.selections[i2] == null && this.rendererCapabilities[i2].getTrackType() != -2) {
                    r3 = false;
                }
                P3.v.checkState(r3);
            } else {
                P3.v.checkState(selectTracks.selections[i2] == null);
            }
        }
        for (ExoTrackSelection exoTrackSelection : selectTracks.selections) {
            if (exoTrackSelection != null) {
                exoTrackSelection.onPlaybackSpeed(f3);
                exoTrackSelection.onPlayWhenReadyChanged(z6);
            }
        }
        return selectTracks;
    }

    public void setNext(MediaPeriodHolder mediaPeriodHolder) {
        if (mediaPeriodHolder == this.next) {
            return;
        }
        disableTrackSelectionsInResult();
        this.next = mediaPeriodHolder;
        enableTrackSelectionsInResult();
    }

    public void setRendererOffset(long j7) {
        this.rendererPositionOffsetUs = j7;
    }

    public long toPeriodTime(long j7) {
        return j7 - getRendererOffset();
    }

    public long toRendererTime(long j7) {
        return j7 + getRendererOffset();
    }

    public void updateClipping() {
        MediaPeriod mediaPeriod = this.mediaPeriod;
        if (mediaPeriod instanceof ClippingMediaPeriod) {
            long j7 = this.info.endPositionUs;
            if (j7 == androidx.media3.common.C.TIME_UNSET) {
                j7 = Long.MIN_VALUE;
            }
            ((ClippingMediaPeriod) mediaPeriod).updateClipping(0L, j7);
        }
    }

    public long applyTrackSelection(TrackSelectorResult trackSelectorResult, long j7, boolean z6, boolean[] zArr) {
        int i2 = 0;
        while (true) {
            boolean z7 = true;
            if (i2 >= trackSelectorResult.length) {
                break;
            }
            boolean[] zArr2 = this.mayRetainStreamFlags;
            if (z6 || !trackSelectorResult.isEquivalent(this.trackSelectorResult, i2)) {
                z7 = false;
            }
            zArr2[i2] = z7;
            i2++;
        }
        disassociateNoSampleRenderersWithEmptySampleStream(this.sampleStreams);
        disableTrackSelectionsInResult();
        this.trackSelectorResult = trackSelectorResult;
        enableTrackSelectionsInResult();
        long selectTracks = this.mediaPeriod.selectTracks(trackSelectorResult.selections, this.mayRetainStreamFlags, this.sampleStreams, zArr, j7);
        associateNoSampleRenderersWithEmptySampleStream(this.sampleStreams);
        this.hasEnabledTracks = false;
        int i7 = 0;
        while (true) {
            SampleStream[] sampleStreamArr = this.sampleStreams;
            if (i7 >= sampleStreamArr.length) {
                return selectTracks;
            }
            if (sampleStreamArr[i7] != null) {
                P3.v.checkState(trackSelectorResult.isRendererEnabled(i7));
                if (this.rendererCapabilities[i7].getTrackType() != -2) {
                    this.hasEnabledTracks = true;
                }
            } else {
                P3.v.checkState(trackSelectorResult.selections[i7] == null);
            }
            i7++;
        }
    }
}
