package v0;

import androidx.media3.exoplayer.ExoPlayer;
import com.android.volley.DefaultRetryPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class b0 {
    public static long a(byte b7, byte b8) {
        int i2;
        int i7 = b7 & 255;
        int i8 = b7 & 3;
        if (i8 != 0) {
            i2 = 2;
            if (i8 != 1 && i8 != 2) {
                i2 = b8 & 63;
            }
        } else {
            i2 = 1;
        }
        int i9 = i7 >> 3;
        return i2 * (i9 >= 16 ? DefaultRetryPolicy.DEFAULT_TIMEOUT_MS << r6 : i9 >= 12 ? 10000 << (i9 & 1) : (i9 & 3) == 3 ? ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS : 10000 << r6);
    }

    public static List<byte[]> buildInitializationData(byte[] bArr) {
        long preSkipSamples = (getPreSkipSamples(bArr) * androidx.media3.common.C.NANOS_PER_SECOND) / 48000;
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(preSkipSamples).array());
        arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(80000000L).array());
        return arrayList;
    }

    public static int getChannelCount(byte[] bArr) {
        return bArr[9] & 255;
    }

    public static long getPacketDurationUs(byte[] bArr) {
        return a(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0);
    }

    public static int getPreSkipSamples(byte[] bArr) {
        return (bArr[10] & 255) | ((bArr[11] & 255) << 8);
    }

    public static boolean needToDecodeOpusFrame(long j7, long j8) {
        return j7 - j8 <= 80000;
    }

    public static int parseOggPacketAudioSampleCount(ByteBuffer byteBuffer) {
        int parseOggPacketForPreAudioSampleByteCount = parseOggPacketForPreAudioSampleByteCount(byteBuffer);
        int i2 = byteBuffer.get(parseOggPacketForPreAudioSampleByteCount + 26) + 27 + parseOggPacketForPreAudioSampleByteCount;
        return (int) ((a(byteBuffer.get(i2), byteBuffer.limit() - i2 > 1 ? byteBuffer.get(i2 + 1) : (byte) 0) * 48000) / 1000000);
    }

    public static int parseOggPacketForPreAudioSampleByteCount(ByteBuffer byteBuffer) {
        if ((byteBuffer.get(5) & 2) == 0) {
            return 0;
        }
        byte b7 = byteBuffer.get(26);
        int i2 = 28;
        int i7 = 28;
        for (int i8 = 0; i8 < b7; i8++) {
            i7 += byteBuffer.get(i8 + 27);
        }
        byte b8 = byteBuffer.get(i7 + 26);
        for (int i9 = 0; i9 < b8; i9++) {
            i2 += byteBuffer.get(i7 + 27 + i9);
        }
        return i7 + i2;
    }

    public static int parsePacketAudioSampleCount(ByteBuffer byteBuffer) {
        return (int) ((a(byteBuffer.get(0), byteBuffer.limit() > 1 ? byteBuffer.get(1) : (byte) 0) * 48000) / 1000000);
    }
}
