package androidx.media3.exoplayer.dash;

import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.dash.manifest.EventStream;
import androidx.media3.exoplayer.source.SampleStream;
import java.io.IOException;
import u0.C1665f;

/* loaded from: classes.dex */
final class EventSampleStream implements SampleStream {
    private int currentIndex;
    private EventStream eventStream;
    private boolean eventStreamAppendable;
    private long[] eventTimesUs;
    private boolean isFormatSentDownstream;
    private final Format upstreamFormat;
    private final G0.c eventMessageEncoder = new G0.c();
    private long pendingSeekPositionUs = C.TIME_UNSET;

    public EventSampleStream(EventStream eventStream, Format format, boolean z6) {
        this.upstreamFormat = format;
        this.eventStream = eventStream;
        this.eventTimesUs = eventStream.presentationTimesUs;
        updateEventStream(eventStream, z6);
    }

    public String eventStreamId() {
        return this.eventStream.id();
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public boolean isReady() {
        return true;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public void maybeThrowError() throws IOException {
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public int readData(FormatHolder formatHolder, C1665f c1665f, int i2) {
        int i7 = this.currentIndex;
        boolean z6 = i7 == this.eventTimesUs.length;
        if (z6 && !this.eventStreamAppendable) {
            c1665f.setFlags(4);
            return -4;
        }
        if ((i2 & 2) != 0 || !this.isFormatSentDownstream) {
            formatHolder.format = this.upstreamFormat;
            this.isFormatSentDownstream = true;
            return -5;
        }
        if (z6) {
            return -3;
        }
        if ((i2 & 1) == 0) {
            this.currentIndex = i7 + 1;
        }
        if ((i2 & 4) == 0) {
            byte[] encode = this.eventMessageEncoder.encode(this.eventStream.events[i7]);
            c1665f.ensureSpaceForWrite(encode.length);
            c1665f.data.put(encode);
        }
        c1665f.timeUs = this.eventTimesUs[i7];
        c1665f.setFlags(1);
        return -4;
    }

    public void seekToUs(long j7) {
        int binarySearchCeil = Util.binarySearchCeil(this.eventTimesUs, j7, true, false);
        this.currentIndex = binarySearchCeil;
        if (!this.eventStreamAppendable || binarySearchCeil != this.eventTimesUs.length) {
            j7 = C.TIME_UNSET;
        }
        this.pendingSeekPositionUs = j7;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public int skipData(long j7) {
        int max = Math.max(this.currentIndex, Util.binarySearchCeil(this.eventTimesUs, j7, true, false));
        int i2 = max - this.currentIndex;
        this.currentIndex = max;
        return i2;
    }

    public void updateEventStream(EventStream eventStream, boolean z6) {
        int i2 = this.currentIndex;
        long j7 = i2 == 0 ? -9223372036854775807L : this.eventTimesUs[i2 - 1];
        this.eventStreamAppendable = z6;
        this.eventStream = eventStream;
        long[] jArr = eventStream.presentationTimesUs;
        this.eventTimesUs = jArr;
        long j8 = this.pendingSeekPositionUs;
        if (j8 != C.TIME_UNSET) {
            seekToUs(j8);
        } else if (j7 != C.TIME_UNSET) {
            this.currentIndex = Util.binarySearchCeil(jArr, j7, false, false);
        }
    }
}
