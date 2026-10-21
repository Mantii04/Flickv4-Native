package androidx.media3.datasource;

import P3.v;
import android.net.Uri;
import android.util.Base64;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

@UnstableApi
/* loaded from: classes.dex */
public final class DataSchemeDataSource extends BaseDataSource {
    public static final String SCHEME_DATA = "data";
    private int bytesRemaining;
    private byte[] data;
    private DataSpec dataSpec;
    private int readPosition;

    public DataSchemeDataSource() {
        super(false);
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() {
        if (this.data != null) {
            this.data = null;
            transferEnded();
        }
        this.dataSpec = null;
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        DataSpec dataSpec = this.dataSpec;
        if (dataSpec != null) {
            return dataSpec.uri;
        }
        return null;
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        transferInitializing(dataSpec);
        this.dataSpec = dataSpec;
        Uri normalizeScheme = dataSpec.uri.normalizeScheme();
        String scheme = normalizeScheme.getScheme();
        v.checkArgument(SCHEME_DATA.equals(scheme), "Unsupported scheme: %s", scheme);
        String[] split = Util.split(normalizeScheme.getSchemeSpecificPart(), ",");
        if (split.length != 2) {
            throw ParserException.createForMalformedDataOfUnknownType("Unexpected URI format: " + normalizeScheme, null);
        }
        String str = split[1];
        if (split[0].contains(";base64")) {
            try {
                this.data = Base64.decode(str, 0);
            } catch (IllegalArgumentException e3) {
                throw ParserException.createForMalformedDataOfUnknownType("Error while parsing Base64 encoded string: " + str, e3);
            }
        } else {
            this.data = Util.getUtf8Bytes(URLDecoder.decode(str, StandardCharsets.US_ASCII.name()));
        }
        long j7 = dataSpec.position;
        byte[] bArr = this.data;
        if (j7 > bArr.length) {
            this.data = null;
            throw new DataSourceException(2008);
        }
        int i2 = (int) j7;
        this.readPosition = i2;
        int length = bArr.length - i2;
        this.bytesRemaining = length;
        long j8 = dataSpec.length;
        if (j8 != -1) {
            this.bytesRemaining = (int) Math.min(length, j8);
        }
        transferStarted(dataSpec);
        long j9 = dataSpec.length;
        return j9 != -1 ? j9 : this.bytesRemaining;
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i2, int i7) {
        if (i7 == 0) {
            return 0;
        }
        int i8 = this.bytesRemaining;
        if (i8 == 0) {
            return -1;
        }
        int min = Math.min(i7, i8);
        System.arraycopy(Util.castNonNull(this.data), this.readPosition, bArr, i2, min);
        this.readPosition += min;
        this.bytesRemaining -= min;
        bytesTransferred(min);
        return min;
    }
}
