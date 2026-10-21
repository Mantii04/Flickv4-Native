package androidx.media3.exoplayer.dash;

import N0.h;
import P0.u;
import P3.v;
import S0.p;
import S0.q;
import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.exoplayer.dash.manifest.DashManifest;
import androidx.media3.exoplayer.dash.manifest.DashManifestParser;
import androidx.media3.exoplayer.dash.manifest.Period;
import androidx.media3.exoplayer.dash.manifest.RangedUri;
import androidx.media3.exoplayer.dash.manifest.Representation;
import androidx.media3.exoplayer.source.chunk.BundledChunkExtractor;
import androidx.media3.exoplayer.source.chunk.ChunkExtractor;
import androidx.media3.exoplayer.source.chunk.InitializationChunk;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import com.google.common.collect.ImmutableMap;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import v0.r;

@UnstableApi
/* loaded from: classes.dex */
public final class DashUtil {
    private DashUtil() {
    }

    public static DataSpec buildDataSpec(Representation representation, String str, RangedUri rangedUri, int i2, Map<String, String> map) {
        return new DataSpec.Builder().setUri(rangedUri.resolveUri(str)).setPosition(rangedUri.start).setLength(rangedUri.length).setKey(resolveCacheKey(representation, rangedUri)).setFlags(i2).setHttpRequestHeaders(map).build();
    }

    private static Representation getFirstRepresentation(Period period, int i2) {
        int adaptationSetIndex = period.getAdaptationSetIndex(i2);
        if (adaptationSetIndex == -1) {
            return null;
        }
        List<Representation> list = period.adaptationSets.get(adaptationSetIndex).representations;
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static r loadChunkIndex(DataSource dataSource, int i2, Representation representation, int i7) throws IOException {
        if (representation.getInitializationUri() == null) {
            return null;
        }
        ChunkExtractor newChunkExtractor = newChunkExtractor(i2, representation.format);
        try {
            loadInitializationData(newChunkExtractor, dataSource, representation, i7, true);
            newChunkExtractor.release();
            return newChunkExtractor.getChunkIndex();
        } catch (Throwable th) {
            newChunkExtractor.release();
            throw th;
        }
    }

    public static Format loadFormatWithDrmInitData(DataSource dataSource, Period period) throws IOException {
        int i2 = 2;
        Representation firstRepresentation = getFirstRepresentation(period, 2);
        if (firstRepresentation == null) {
            i2 = 1;
            firstRepresentation = getFirstRepresentation(period, 1);
            if (firstRepresentation == null) {
                return null;
            }
        }
        Format format = firstRepresentation.format;
        Format loadSampleFormat = loadSampleFormat(dataSource, i2, firstRepresentation);
        return loadSampleFormat == null ? format : loadSampleFormat.withManifestFormatInfo(format);
    }

    private static void loadInitializationData(ChunkExtractor chunkExtractor, DataSource dataSource, Representation representation, int i2, boolean z6) throws IOException {
        RangedUri rangedUri = (RangedUri) v.checkNotNull(representation.getInitializationUri());
        if (z6) {
            RangedUri indexUri = representation.getIndexUri();
            if (indexUri == null) {
                return;
            }
            RangedUri attemptMerge = rangedUri.attemptMerge(indexUri, representation.baseUrls.get(i2).url);
            if (attemptMerge == null) {
                loadInitializationData(dataSource, representation, i2, chunkExtractor, rangedUri);
                rangedUri = indexUri;
            } else {
                rangedUri = attemptMerge;
            }
        }
        loadInitializationData(dataSource, representation, i2, chunkExtractor, rangedUri);
    }

    public static DashManifest loadManifest(DataSource dataSource, Uri uri) throws IOException {
        return (DashManifest) ParsingLoadable.load(dataSource, new DashManifestParser(), uri, 4);
    }

    public static Format loadSampleFormat(DataSource dataSource, int i2, Representation representation, int i7) throws IOException {
        if (representation.getInitializationUri() == null) {
            return null;
        }
        ChunkExtractor newChunkExtractor = newChunkExtractor(i2, representation.format);
        try {
            loadInitializationData(newChunkExtractor, dataSource, representation, i7, false);
            newChunkExtractor.release();
            return ((Format[]) v.checkNotNull(newChunkExtractor.getSampleFormats()))[0];
        } catch (Throwable th) {
            newChunkExtractor.release();
            throw th;
        }
    }

    private static ChunkExtractor newChunkExtractor(int i2, Format format) {
        String str = format.containerMimeType;
        p pVar = q.f3274a;
        return new BundledChunkExtractor((str == null || !(str.startsWith(MimeTypes.VIDEO_WEBM) || str.startsWith(MimeTypes.AUDIO_WEBM))) ? new u(pVar, 32) : new h(pVar, 2), i2, format);
    }

    public static String resolveCacheKey(Representation representation, RangedUri rangedUri) {
        String cacheKey = representation.getCacheKey();
        return cacheKey != null ? cacheKey : rangedUri.resolveUri(representation.baseUrls.get(0).url).toString();
    }

    public static void loadInitializationData(ChunkExtractor chunkExtractor, DataSource dataSource, Representation representation, boolean z6) throws IOException {
        loadInitializationData(chunkExtractor, dataSource, representation, 0, z6);
    }

    public static r loadChunkIndex(DataSource dataSource, int i2, Representation representation) throws IOException {
        return loadChunkIndex(dataSource, i2, representation, 0);
    }

    private static void loadInitializationData(DataSource dataSource, Representation representation, int i2, ChunkExtractor chunkExtractor, RangedUri rangedUri) throws IOException {
        new InitializationChunk(dataSource, buildDataSpec(representation, representation.baseUrls.get(i2).url, rangedUri, 0, ImmutableMap.of()), representation.format, 0, null, chunkExtractor).load();
    }

    public static Format loadSampleFormat(DataSource dataSource, int i2, Representation representation) throws IOException {
        return loadSampleFormat(dataSource, i2, representation, 0);
    }

    @Deprecated
    public static DataSpec buildDataSpec(Representation representation, String str, RangedUri rangedUri, int i2) {
        return buildDataSpec(representation, str, rangedUri, i2, ImmutableMap.of());
    }

    @Deprecated
    public static DataSpec buildDataSpec(Representation representation, RangedUri rangedUri, int i2) {
        return buildDataSpec(representation, representation.baseUrls.get(0).url, rangedUri, i2, ImmutableMap.of());
    }
}
