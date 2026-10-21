package androidx.media3.datasource;

import androidx.media3.common.util.UnstableApi;
import java.io.IOException;
import java.util.Arrays;

@UnstableApi
/* loaded from: classes.dex */
public final class DataSourceUtil {
    private DataSourceUtil() {
    }

    public static void closeQuietly(DataSource dataSource) {
        if (dataSource != null) {
            try {
                dataSource.close();
            } catch (IOException unused) {
            }
        }
    }

    public static byte[] readExactly(DataSource dataSource, int i2) throws IOException {
        byte[] bArr = new byte[i2];
        int i7 = 0;
        while (i7 < i2) {
            int read = dataSource.read(bArr, i7, i2 - i7);
            if (read == -1) {
                throw new IllegalStateException(A.i.e(i7, i2, "Not enough data could be read: ", " < "));
            }
            i7 += read;
        }
        return bArr;
    }

    public static byte[] readToEnd(DataSource dataSource) throws IOException {
        byte[] bArr = new byte[1024];
        int i2 = 0;
        int i7 = 0;
        while (i2 != -1) {
            if (i7 == bArr.length) {
                bArr = Arrays.copyOf(bArr, bArr.length * 2);
            }
            i2 = dataSource.read(bArr, i7, bArr.length - i7);
            if (i2 != -1) {
                i7 += i2;
            }
        }
        return Arrays.copyOf(bArr, i7);
    }
}
