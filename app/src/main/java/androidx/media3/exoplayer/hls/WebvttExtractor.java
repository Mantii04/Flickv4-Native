package androidx.media3.exoplayer.hls;

import P3.v;
import S0.q;
import S0.t;
import android.text.TextUtils;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import b1.AbstractC0639k;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import v0.AbstractC1716B;
import v0.C;
import v0.D;
import v0.F;
import v0.c0;
import v0.f0;
import v0.r0;

@UnstableApi
/* loaded from: classes.dex */
public final class WebvttExtractor implements C {
    private static final int HEADER_MAX_LENGTH = 9;
    private static final int HEADER_MIN_LENGTH = 6;
    private static final Pattern LOCAL_TIMESTAMP = Pattern.compile("LOCAL:([^,]+)");
    private static final Pattern MEDIA_TIMESTAMP = Pattern.compile("MPEGTS:(-?\\d+)");
    private final String language;
    private F output;
    private final boolean parseSubtitlesDuringExtraction;
    private byte[] sampleData;
    private final ParsableByteArray sampleDataWrapper;
    private int sampleSize;
    private final q subtitleParserFactory;
    private final TimestampAdjuster timestampAdjuster;

    @Deprecated
    public WebvttExtractor(String str, TimestampAdjuster timestampAdjuster) {
        this(str, timestampAdjuster, q.f3274a, false);
    }

    private r0 buildTrackOutput(long j7) {
        r0 track = this.output.track(0, 3);
        track.format(new Format.Builder().setSampleMimeType(MimeTypes.TEXT_VTT).setLanguage(this.language).setSubsampleOffsetUs(j7).build());
        this.output.endTracks();
        return track;
    }

    private void processSample() throws ParserException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(this.sampleData);
        AbstractC0639k.validateWebvttHeaderLine(parsableByteArray);
        long j7 = 0;
        long j8 = 0;
        for (String readLine = parsableByteArray.readLine(); !TextUtils.isEmpty(readLine); readLine = parsableByteArray.readLine()) {
            if (readLine.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher = LOCAL_TIMESTAMP.matcher(readLine);
                if (!matcher.find()) {
                    throw ParserException.createForMalformedContainer("X-TIMESTAMP-MAP doesn't contain local timestamp: ".concat(readLine), null);
                }
                Matcher matcher2 = MEDIA_TIMESTAMP.matcher(readLine);
                if (!matcher2.find()) {
                    throw ParserException.createForMalformedContainer("X-TIMESTAMP-MAP doesn't contain media timestamp: ".concat(readLine), null);
                }
                j8 = AbstractC0639k.parseTimestampUs((String) v.checkNotNull(matcher.group(1)));
                j7 = TimestampAdjuster.ptsToUs(Long.parseLong((String) v.checkNotNull(matcher2.group(1))));
            }
        }
        Matcher findNextCueHeader = AbstractC0639k.findNextCueHeader(parsableByteArray);
        if (findNextCueHeader == null) {
            buildTrackOutput(0L);
            return;
        }
        long parseTimestampUs = AbstractC0639k.parseTimestampUs((String) v.checkNotNull(findNextCueHeader.group(1)));
        long adjustTsTimestamp = this.timestampAdjuster.adjustTsTimestamp(TimestampAdjuster.usToWrappedPts((j7 + parseTimestampUs) - j8));
        r0 buildTrackOutput = buildTrackOutput(adjustTsTimestamp - parseTimestampUs);
        this.sampleDataWrapper.reset(this.sampleData, this.sampleSize);
        buildTrackOutput.sampleData(this.sampleDataWrapper, this.sampleSize);
        buildTrackOutput.sampleMetadata(adjustTsTimestamp, 1, this.sampleSize, 0, null);
    }

    @Override // v0.C
    public /* bridge */ /* synthetic */ List getSniffFailureDetails() {
        return AbstractC1716B.a(this);
    }

    @Override // v0.C
    public /* bridge */ /* synthetic */ C getUnderlyingImplementation() {
        return AbstractC1716B.b(this);
    }

    @Override // v0.C
    public void init(F f3) {
        if (this.parseSubtitlesDuringExtraction) {
            f3 = new t(f3, this.subtitleParserFactory);
        }
        this.output = f3;
        f3.seekMap(new f0(androidx.media3.common.C.TIME_UNSET));
    }

    @Override // v0.C
    public int read(D d7, c0 c0Var) throws IOException {
        v.checkNotNull(this.output);
        int length = (int) d7.getLength();
        int i2 = this.sampleSize;
        byte[] bArr = this.sampleData;
        if (i2 == bArr.length) {
            this.sampleData = Arrays.copyOf(bArr, ((length != -1 ? length : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.sampleData;
        int i7 = this.sampleSize;
        int read = d7.read(bArr2, i7, bArr2.length - i7);
        if (read != -1) {
            int i8 = this.sampleSize + read;
            this.sampleSize = i8;
            if (length == -1 || i8 != length) {
                return 0;
            }
        }
        processSample();
        return -1;
    }

    @Override // v0.C
    public void release() {
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        throw new IllegalStateException();
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        d7.peekFully(this.sampleData, 0, 6, false);
        this.sampleDataWrapper.reset(this.sampleData, 6);
        if (AbstractC0639k.isWebvttHeaderLine(this.sampleDataWrapper)) {
            return true;
        }
        d7.peekFully(this.sampleData, 6, 3, false);
        this.sampleDataWrapper.reset(this.sampleData, 9);
        return AbstractC0639k.isWebvttHeaderLine(this.sampleDataWrapper);
    }

    public WebvttExtractor(String str, TimestampAdjuster timestampAdjuster, q qVar, boolean z6) {
        this.language = str;
        this.timestampAdjuster = timestampAdjuster;
        this.sampleDataWrapper = new ParsableByteArray();
        this.sampleData = new byte[1024];
        this.subtitleParserFactory = qVar;
        this.parseSubtitlesDuringExtraction = z6;
    }
}
