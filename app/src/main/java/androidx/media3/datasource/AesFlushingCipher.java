package androidx.media3.datasource;

import P3.v;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.firebase.sessions.settings.RemoteSettings;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

@UnstableApi
/* loaded from: classes.dex */
public final class AesFlushingCipher {
    private final int blockSize;
    private final Cipher cipher;
    private final byte[] flushedBlock;
    private int pendingXorBytes;
    private final byte[] zerosBlock;

    public AesFlushingCipher(int i2, byte[] bArr, String str, long j7) {
        this(i2, bArr, getFNV64Hash(str), j7);
    }

    private static long getFNV64Hash(String str) {
        long j7 = 0;
        if (str == null) {
            return 0L;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            long charAt = j7 ^ str.charAt(i2);
            j7 = charAt + (charAt << 1) + (charAt << 4) + (charAt << 5) + (charAt << 7) + (charAt << 8) + (charAt << 40);
        }
        return j7;
    }

    private byte[] getInitializationVector(long j7, long j8) {
        return ByteBuffer.allocate(16).putLong(j7).putLong(j8).array();
    }

    private int nonFlushingUpdate(byte[] bArr, int i2, int i7, byte[] bArr2, int i8) {
        try {
            return this.cipher.update(bArr, i2, i7, bArr2, i8);
        } catch (ShortBufferException e3) {
            throw new RuntimeException(e3);
        }
    }

    public void update(byte[] bArr, int i2, int i7, byte[] bArr2, int i8) {
        int i9 = i2;
        int i10 = i7;
        int i11 = i8;
        do {
            int i12 = this.pendingXorBytes;
            if (i12 <= 0) {
                int nonFlushingUpdate = nonFlushingUpdate(bArr, i9, i10, bArr2, i11);
                if (i10 == nonFlushingUpdate) {
                    return;
                }
                int i13 = i10 - nonFlushingUpdate;
                int i14 = 0;
                v.checkState(i13 < this.blockSize);
                int i15 = i11 + nonFlushingUpdate;
                int i16 = this.blockSize - i13;
                this.pendingXorBytes = i16;
                v.checkState(nonFlushingUpdate(this.zerosBlock, 0, i16, this.flushedBlock, 0) == this.blockSize);
                while (i14 < i13) {
                    bArr2[i15] = this.flushedBlock[i14];
                    i14++;
                    i15++;
                }
                return;
            }
            bArr2[i11] = (byte) (bArr[i9] ^ this.flushedBlock[this.blockSize - i12]);
            i11++;
            i9++;
            this.pendingXorBytes = i12 - 1;
            i10--;
        } while (i10 != 0);
    }

    public void updateInPlace(byte[] bArr, int i2, int i7) {
        update(bArr, i2, i7, bArr, i2);
    }

    public AesFlushingCipher(int i2, byte[] bArr, long j7, long j8) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
            this.cipher = cipher;
            int blockSize = cipher.getBlockSize();
            this.blockSize = blockSize;
            this.zerosBlock = new byte[blockSize];
            this.flushedBlock = new byte[blockSize];
            long j9 = j8 / blockSize;
            int i7 = (int) (j8 % blockSize);
            cipher.init(i2, new SecretKeySpec(bArr, Util.splitAtFirst(cipher.getAlgorithm(), RemoteSettings.FORWARD_SLASH_STRING)[0]), new IvParameterSpec(getInitializationVector(j7, j9)));
            if (i7 != 0) {
                updateInPlace(new byte[i7], 0, i7);
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e3) {
            throw new RuntimeException(e3);
        }
    }
}
