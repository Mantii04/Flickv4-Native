package androidx.media3.exoplayer.source;

import P3.v;
import Q3.C0248s;
import androidx.media3.common.C;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.LoadingInfo;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

@UnstableApi
/* loaded from: classes.dex */
public final class CompositeSequenceableLoader implements SequenceableLoader {
    private long lastAudioVideoBufferedPositionUs;
    private final ImmutableList<SequenceableLoaderWithTrackTypes> loadersWithTrackTypes;

    public static final class SequenceableLoaderWithTrackTypes implements SequenceableLoader {
        private final SequenceableLoader loader;
        private final ImmutableList<Integer> trackTypes;

        public SequenceableLoaderWithTrackTypes(SequenceableLoader sequenceableLoader, List<Integer> list) {
            this.loader = sequenceableLoader;
            this.trackTypes = ImmutableList.copyOf((Collection) list);
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader
        public boolean continueLoading(LoadingInfo loadingInfo) {
            return this.loader.continueLoading(loadingInfo);
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader
        public long getBufferedPositionUs() {
            return this.loader.getBufferedPositionUs();
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            return this.loader.getNextLoadPositionUs();
        }

        public ImmutableList<Integer> getTrackTypes() {
            return this.trackTypes;
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader
        public boolean isLoading() {
            return this.loader.isLoading();
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader
        public void reevaluateBuffer(long j7) {
            this.loader.reevaluateBuffer(j7);
        }
    }

    @Deprecated
    public CompositeSequenceableLoader(SequenceableLoader[] sequenceableLoaderArr) {
        this(ImmutableList.copyOf(sequenceableLoaderArr), Collections.nCopies(sequenceableLoaderArr.length, ImmutableList.of(-1)));
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(LoadingInfo loadingInfo) {
        boolean z6;
        boolean z7 = false;
        do {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                return z7;
            }
            z6 = false;
            for (int i2 = 0; i2 < this.loadersWithTrackTypes.size(); i2++) {
                long nextLoadPositionUs2 = this.loadersWithTrackTypes.get(i2).getNextLoadPositionUs();
                boolean z8 = nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= loadingInfo.playbackPositionUs;
                if (nextLoadPositionUs2 == nextLoadPositionUs || z8) {
                    z6 |= this.loadersWithTrackTypes.get(i2).continueLoading(loadingInfo);
                }
            }
            z7 |= z6;
        } while (z6);
        return z7;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        long j7 = Long.MAX_VALUE;
        long j8 = Long.MAX_VALUE;
        for (int i2 = 0; i2 < this.loadersWithTrackTypes.size(); i2++) {
            SequenceableLoaderWithTrackTypes sequenceableLoaderWithTrackTypes = this.loadersWithTrackTypes.get(i2);
            long bufferedPositionUs = sequenceableLoaderWithTrackTypes.getBufferedPositionUs();
            if ((sequenceableLoaderWithTrackTypes.getTrackTypes().contains(1) || sequenceableLoaderWithTrackTypes.getTrackTypes().contains(2) || sequenceableLoaderWithTrackTypes.getTrackTypes().contains(4)) && bufferedPositionUs != Long.MIN_VALUE) {
                j7 = Math.min(j7, bufferedPositionUs);
            }
            if (bufferedPositionUs != Long.MIN_VALUE) {
                j8 = Math.min(j8, bufferedPositionUs);
            }
        }
        if (j7 != Long.MAX_VALUE) {
            this.lastAudioVideoBufferedPositionUs = j7;
            return j7;
        }
        if (j8 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        long j9 = this.lastAudioVideoBufferedPositionUs;
        return j9 != C.TIME_UNSET ? j9 : j8;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        long j7 = Long.MAX_VALUE;
        for (int i2 = 0; i2 < this.loadersWithTrackTypes.size(); i2++) {
            long nextLoadPositionUs = this.loadersWithTrackTypes.get(i2).getNextLoadPositionUs();
            if (nextLoadPositionUs != Long.MIN_VALUE) {
                j7 = Math.min(j7, nextLoadPositionUs);
            }
        }
        if (j7 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j7;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        for (int i2 = 0; i2 < this.loadersWithTrackTypes.size(); i2++) {
            if (this.loadersWithTrackTypes.get(i2).isLoading()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j7) {
        for (int i2 = 0; i2 < this.loadersWithTrackTypes.size(); i2++) {
            this.loadersWithTrackTypes.get(i2).reevaluateBuffer(j7);
        }
    }

    public CompositeSequenceableLoader(List<? extends SequenceableLoader> list, List<List<Integer>> list2) {
        C0248s builder = ImmutableList.builder();
        v.checkArgument(list.size() == list2.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            builder.add((Object) new SequenceableLoaderWithTrackTypes(list.get(i2), list2.get(i2)));
        }
        this.loadersWithTrackTypes = builder.build();
        this.lastAudioVideoBufferedPositionUs = C.TIME_UNSET;
    }
}
