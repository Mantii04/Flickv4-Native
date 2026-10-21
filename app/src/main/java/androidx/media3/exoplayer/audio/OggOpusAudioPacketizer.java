package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import u0.C1665f;
import v0.b0;

@UnstableApi
/* loaded from: classes.dex */
public final class OggOpusAudioPacketizer {
    private static final int CHECKSUM_INDEX = 22;
    private static final int FIRST_AUDIO_SAMPLE_PAGE_SEQUENCE_NUMBER = 2;
    private static final int OGG_PACKET_HEADER_LENGTH = 28;
    private static final int SERIAL_NUMBER = 0;
    private static final byte[] OGG_DEFAULT_ID_HEADER_PAGE = {79, 103, 103, 83, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, -43, -59, -9, 1, 19, 79, 112, 117, 115, 72, 101, 97, 100, 1, 2, 56, 1, Byte.MIN_VALUE, ByteSourceJsonBootstrapper.UTF8_BOM_2, 0, 0, 0, 0, 0};
    private static final byte[] OGG_DEFAULT_COMMENT_HEADER_PAGE = {79, 103, 103, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 11, -103, 87, 83, 1, 16, 79, 112, 117, 115, 84, 97, 103, 115, 0, 0, 0, 0, 0, 0, 0, 0};
    private ByteBuffer outputBuffer = AudioProcessor.EMPTY_BUFFER;
    private int granulePosition = 0;
    private int pageSequenceNumber = 2;

    private ByteBuffer packetizeInternal(ByteBuffer byteBuffer, byte[] bArr) {
        int i2;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i7 = limit - position;
        int i8 = (i7 + 255) / 255;
        int i9 = i8 + 27 + i7;
        if (this.pageSequenceNumber == 2) {
            int length = bArr != null ? bArr.length + 28 : OGG_DEFAULT_ID_HEADER_PAGE.length;
            i9 += OGG_DEFAULT_COMMENT_HEADER_PAGE.length + length;
            i2 = length;
        } else {
            i2 = 0;
        }
        ByteBuffer replaceOutputBuffer = replaceOutputBuffer(i9);
        if (this.pageSequenceNumber == 2) {
            if (bArr != null) {
                writeOggIdHeaderPage(replaceOutputBuffer, bArr);
            } else {
                replaceOutputBuffer.put(OGG_DEFAULT_ID_HEADER_PAGE);
            }
            replaceOutputBuffer.put(OGG_DEFAULT_COMMENT_HEADER_PAGE);
        }
        int parsePacketAudioSampleCount = this.granulePosition + b0.parsePacketAudioSampleCount(byteBuffer);
        this.granulePosition = parsePacketAudioSampleCount;
        writeOggPacketHeader(replaceOutputBuffer, parsePacketAudioSampleCount, this.pageSequenceNumber, i8, false);
        for (int i10 = 0; i10 < i8; i10++) {
            if (i7 >= 255) {
                replaceOutputBuffer.put((byte) -1);
                i7 -= 255;
            } else {
                replaceOutputBuffer.put((byte) i7);
                i7 = 0;
            }
        }
        while (position < limit) {
            replaceOutputBuffer.put(byteBuffer.get(position));
            position++;
        }
        byteBuffer.position(byteBuffer.limit());
        replaceOutputBuffer.flip();
        if (this.pageSequenceNumber == 2) {
            byte[] array = replaceOutputBuffer.array();
            int arrayOffset = replaceOutputBuffer.arrayOffset() + i2;
            byte[] bArr2 = OGG_DEFAULT_COMMENT_HEADER_PAGE;
            replaceOutputBuffer.putInt(i2 + bArr2.length + 22, Util.crc32(array, arrayOffset + bArr2.length, replaceOutputBuffer.limit() - replaceOutputBuffer.position(), 0));
        } else {
            replaceOutputBuffer.putInt(22, Util.crc32(replaceOutputBuffer.array(), replaceOutputBuffer.arrayOffset(), replaceOutputBuffer.limit() - replaceOutputBuffer.position(), 0));
        }
        this.pageSequenceNumber++;
        return replaceOutputBuffer;
    }

    private ByteBuffer replaceOutputBuffer(int i2) {
        if (this.outputBuffer.capacity() < i2) {
            this.outputBuffer = ByteBuffer.allocate(i2).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.outputBuffer.clear();
        }
        return this.outputBuffer;
    }

    private void writeOggIdHeaderPage(ByteBuffer byteBuffer, byte[] bArr) {
        writeOggPacketHeader(byteBuffer, 0L, 0, 1, true);
        byteBuffer.put(U3.g.checkedCast(bArr.length));
        byteBuffer.put(bArr);
        byteBuffer.putInt(22, Util.crc32(byteBuffer.array(), byteBuffer.arrayOffset(), bArr.length + 28, 0));
        byteBuffer.position(bArr.length + 28);
    }

    private void writeOggPacketHeader(ByteBuffer byteBuffer, long j7, int i2, int i7, boolean z6) {
        byteBuffer.put((byte) 79);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 83);
        byteBuffer.put((byte) 0);
        byteBuffer.put(z6 ? (byte) 2 : (byte) 0);
        byteBuffer.putLong(j7);
        byteBuffer.putInt(0);
        byteBuffer.putInt(i2);
        byteBuffer.putInt(0);
        byteBuffer.put(U3.g.checkedCast(i7));
    }

    public void packetize(C1665f c1665f, List<byte[]> list) {
        P3.v.checkNotNull(c1665f.data);
        if (c1665f.data.limit() - c1665f.data.position() == 0) {
            return;
        }
        this.outputBuffer = packetizeInternal(c1665f.data, (this.pageSequenceNumber == 2 && (list.size() == 1 || list.size() == 3)) ? list.get(0) : null);
        c1665f.clear();
        c1665f.ensureSpaceForWrite(this.outputBuffer.remaining());
        c1665f.data.put(this.outputBuffer);
        c1665f.flip();
    }

    public void reset() {
        this.outputBuffer = AudioProcessor.EMPTY_BUFFER;
        this.granulePosition = 0;
        this.pageSequenceNumber = 2;
    }
}
