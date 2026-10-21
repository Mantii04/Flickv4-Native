package androidx.media3.exoplayer.hls;

import P0.u;
import P3.v;
import S0.q;
import android.annotation.SuppressLint;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.FileTypes;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import c1.C0688S;
import c1.C0696a;
import c1.C0698c;
import c1.C0700e;
import c1.C0702g;
import com.google.common.collect.ImmutableList;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import v0.C;
import v0.D;

@UnstableApi
/* loaded from: classes.dex */
public final class DefaultHlsExtractorFactory implements HlsExtractorFactory {
    private static final int[] DEFAULT_EXTRACTOR_ORDER = {8, 13, 11, 2, 0, 1, 7};
    private int codecsToParseWithinGopSampleDependencies;
    private final boolean exposeCea608WhenMissingDeclarations;
    private boolean parseSubtitlesDuringExtraction;
    private final int payloadReaderFactoryFlags;
    private q subtitleParserFactory;

    public DefaultHlsExtractorFactory() {
        this(0, true);
    }

    private static void addFileTypeIfValidAndNotPresent(int i2, List<Integer> list) {
        if (com.google.common.primitives.a.indexOf(DEFAULT_EXTRACTOR_ORDER, i2) == -1 || list.contains(Integer.valueOf(i2))) {
            return;
        }
        list.add(Integer.valueOf(i2));
    }

    @SuppressLint({"SwitchIntDef"})
    private C createExtractorByFileType(int i2, Format format, List<Format> list, TimestampAdjuster timestampAdjuster) {
        if (i2 == 0) {
            return new C0696a();
        }
        if (i2 == 1) {
            return new C0698c();
        }
        if (i2 == 2) {
            return new C0700e();
        }
        if (i2 == 7) {
            return new O0.e(0, 0L);
        }
        if (i2 == 8) {
            return createFragmentedMp4Extractor(this.subtitleParserFactory, this.parseSubtitlesDuringExtraction, timestampAdjuster, format, list, this.codecsToParseWithinGopSampleDependencies);
        }
        if (i2 == 11) {
            return createTsExtractor(this.payloadReaderFactoryFlags, this.exposeCea608WhenMissingDeclarations, format, list, timestampAdjuster, this.subtitleParserFactory, this.parseSubtitlesDuringExtraction);
        }
        if (i2 != 13) {
            return null;
        }
        return new WebvttExtractor(format.language, timestampAdjuster, this.subtitleParserFactory, this.parseSubtitlesDuringExtraction);
    }

    private static u createFragmentedMp4Extractor(q qVar, boolean z6, TimestampAdjuster timestampAdjuster, Format format, List<Format> list, int i2) {
        int i7 = isFmp4Variant(format) ? 4 : 0;
        if (!z6) {
            qVar = q.f3274a;
            i7 |= 32;
        }
        q qVar2 = qVar;
        int codecsToParseWithinGopSampleDependenciesAsFlags = i7 | u.codecsToParseWithinGopSampleDependenciesAsFlags(i2);
        if (list == null) {
            list = ImmutableList.of();
        }
        return new u(qVar2, codecsToParseWithinGopSampleDependenciesAsFlags, timestampAdjuster, null, list, null);
    }

    private static C0688S createTsExtractor(int i2, boolean z6, Format format, List<Format> list, TimestampAdjuster timestampAdjuster, q qVar, boolean z7) {
        int i7;
        int i8 = i2 | 16;
        if (list != null) {
            i8 = i2 | 48;
        } else {
            list = z6 ? Collections.singletonList(new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_CEA608).build()) : Collections.EMPTY_LIST;
        }
        String str = format.codecs;
        if (!TextUtils.isEmpty(str)) {
            if (!MimeTypes.containsCodecsCorrespondingToMimeType(str, MimeTypes.AUDIO_AAC)) {
                i8 |= 2;
            }
            if (!MimeTypes.containsCodecsCorrespondingToMimeType(str, MimeTypes.VIDEO_H264)) {
                i8 |= 4;
            }
        }
        if (z7) {
            i7 = 0;
        } else {
            qVar = q.f3274a;
            i7 = 1;
        }
        return new C0688S(2, i7, qVar, timestampAdjuster, new C0702g(i8, list), 112800);
    }

    private static boolean isFmp4Variant(Format format) {
        Metadata metadata = format.metadata;
        return (metadata == null || metadata.getFirstMatchingEntry(HlsTrackMetadataEntry.class, new k(1)) == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$isFmp4Variant$0(HlsTrackMetadataEntry hlsTrackMetadataEntry) {
        return !hlsTrackMetadataEntry.variantInfos.isEmpty();
    }

    private static boolean sniffQuietly(C c7, D d7) throws IOException {
        try {
            boolean sniff = c7.sniff(d7);
            d7.resetPeekPosition();
            return sniff;
        } catch (EOFException unused) {
            d7.resetPeekPosition();
            return false;
        } catch (Throwable th) {
            d7.resetPeekPosition();
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public /* bridge */ /* synthetic */ HlsMediaChunkExtractor createExtractor(Uri uri, Format format, List list, TimestampAdjuster timestampAdjuster, Map map, D d7, PlayerId playerId) throws IOException {
        return createExtractor(uri, format, (List<Format>) list, timestampAdjuster, (Map<String, List<String>>) map, d7, playerId);
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public Format getOutputTextFormat(Format format) {
        String str;
        if (!this.parseSubtitlesDuringExtraction || !this.subtitleParserFactory.supportsFormat(format)) {
            return format;
        }
        Format.Builder cueReplacementBehavior = format.buildUpon().setSampleMimeType(MimeTypes.APPLICATION_MEDIA3_CUES).setCueReplacementBehavior(this.subtitleParserFactory.getCueReplacementBehavior(format));
        StringBuilder sb = new StringBuilder();
        sb.append(format.sampleMimeType);
        if (format.codecs != null) {
            str = StringUtils.SPACE + format.codecs;
        } else {
            str = "";
        }
        sb.append(str);
        return cueReplacementBehavior.setCodecs(sb.toString()).setSubsampleOffsetUs(Long.MAX_VALUE).build();
    }

    public DefaultHlsExtractorFactory(int i2, boolean z6) {
        this.payloadReaderFactoryFlags = i2;
        this.exposeCea608WhenMissingDeclarations = z6;
        this.subtitleParserFactory = new S0.e();
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public BundledHlsMediaChunkExtractor createExtractor(Uri uri, Format format, List<Format> list, TimestampAdjuster timestampAdjuster, Map<String, List<String>> map, D d7, PlayerId playerId) throws IOException {
        int inferFileTypeFromMimeType = FileTypes.inferFileTypeFromMimeType(format.sampleMimeType);
        int inferFileTypeFromResponseHeaders = FileTypes.inferFileTypeFromResponseHeaders(map);
        int inferFileTypeFromUri = FileTypes.inferFileTypeFromUri(uri);
        int[] iArr = DEFAULT_EXTRACTOR_ORDER;
        ArrayList arrayList = new ArrayList(iArr.length);
        addFileTypeIfValidAndNotPresent(inferFileTypeFromMimeType, arrayList);
        addFileTypeIfValidAndNotPresent(inferFileTypeFromResponseHeaders, arrayList);
        addFileTypeIfValidAndNotPresent(inferFileTypeFromUri, arrayList);
        for (int i2 : iArr) {
            addFileTypeIfValidAndNotPresent(i2, arrayList);
        }
        d7.resetPeekPosition();
        C c7 = null;
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            int intValue = ((Integer) arrayList.get(i7)).intValue();
            C c8 = (C) v.checkNotNull(createExtractorByFileType(intValue, format, list, timestampAdjuster));
            if (sniffQuietly(c8, d7)) {
                return new BundledHlsMediaChunkExtractor(c8, format, timestampAdjuster, this.subtitleParserFactory, this.parseSubtitlesDuringExtraction);
            }
            if (c7 == null && (intValue == inferFileTypeFromMimeType || intValue == inferFileTypeFromResponseHeaders || intValue == inferFileTypeFromUri || intValue == 11)) {
                c7 = c8;
            }
        }
        return new BundledHlsMediaChunkExtractor((C) v.checkNotNull(c7), format, timestampAdjuster, this.subtitleParserFactory, this.parseSubtitlesDuringExtraction);
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public DefaultHlsExtractorFactory experimentalParseSubtitlesDuringExtraction(boolean z6) {
        this.parseSubtitlesDuringExtraction = z6;
        return this;
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public DefaultHlsExtractorFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int i2) {
        this.codecsToParseWithinGopSampleDependencies = i2;
        return this;
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public DefaultHlsExtractorFactory setSubtitleParserFactory(q qVar) {
        this.subtitleParserFactory = qVar;
        return this;
    }
}
