package v0;

import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class M {
    public static boolean checkAndPeekStreamMarker(D d7) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        d7.peekFully(parsableByteArray.getData(), 0, 4);
        return parsableByteArray.readUnsignedInt() == 1716281667;
    }

    public static int getFrameStartMarker(D d7) throws IOException {
        d7.resetPeekPosition();
        ParsableByteArray parsableByteArray = new ParsableByteArray(2);
        d7.peekFully(parsableByteArray.getData(), 0, 2);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        if ((readUnsignedShort >> 2) == 16382) {
            d7.resetPeekPosition();
            return readUnsignedShort;
        }
        d7.resetPeekPosition();
        throw ParserException.createForMalformedContainer("First frame does not start with sync code.", null);
    }

    public static Metadata peekId3Metadata(D d7, boolean z6) throws IOException {
        Metadata peekId3Data = new W().peekId3Data(d7, z6 ? null : J0.j.f1461b, 0);
        if (peekId3Data == null || peekId3Data.length() == 0) {
            return null;
        }
        return peekId3Data;
    }

    public static Metadata readId3Metadata(D d7, boolean z6) throws IOException {
        d7.resetPeekPosition();
        long peekPosition = d7.getPeekPosition();
        Metadata peekId3Metadata = peekId3Metadata(d7, z6);
        d7.skipFully((int) (d7.getPeekPosition() - peekPosition));
        return peekId3Metadata;
    }

    public static boolean readMetadataBlock(D d7, L l7) throws IOException {
        d7.resetPeekPosition();
        ParsableBitArray parsableBitArray = new ParsableBitArray(new byte[4]);
        d7.peekFully(parsableBitArray.data, 0, 4);
        boolean readBit = parsableBitArray.readBit();
        int readBits = parsableBitArray.readBits(7);
        int readBits2 = parsableBitArray.readBits(24) + 4;
        if (readBits == 0) {
            byte[] bArr = new byte[38];
            d7.readFully(bArr, 0, 38);
            l7.f20374a = new P(bArr, 4);
            return readBit;
        }
        P p6 = l7.f20374a;
        if (p6 == null) {
            throw new IllegalArgumentException();
        }
        if (readBits == 3) {
            ParsableByteArray parsableByteArray = new ParsableByteArray(readBits2);
            d7.readFully(parsableByteArray.getData(), 0, readBits2);
            l7.f20374a = p6.copyWithSeekTable(readSeekTableMetadataBlock(parsableByteArray));
            return readBit;
        }
        if (readBits == 4) {
            ParsableByteArray parsableByteArray2 = new ParsableByteArray(readBits2);
            d7.readFully(parsableByteArray2.getData(), 0, readBits2);
            parsableByteArray2.skipBytes(4);
            l7.f20374a = p6.copyWithVorbisComments(Arrays.asList(x0.readVorbisCommentHeader(parsableByteArray2, false, false).f20550a));
            return readBit;
        }
        if (readBits != 6) {
            d7.skipFully(readBits2);
            return readBit;
        }
        ParsableByteArray parsableByteArray3 = new ParsableByteArray(readBits2);
        d7.readFully(parsableByteArray3.getData(), 0, readBits2);
        parsableByteArray3.skipBytes(4);
        l7.f20374a = p6.copyWithPictureFrames(ImmutableList.of(H0.a.fromPictureBlock(parsableByteArray3)));
        return readBit;
    }

    public static O readSeekTableMetadataBlock(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(1);
        int readUnsignedInt24 = parsableByteArray.readUnsignedInt24();
        long position = parsableByteArray.getPosition() + readUnsignedInt24;
        int i2 = readUnsignedInt24 / 18;
        long[] jArr = new long[i2];
        long[] jArr2 = new long[i2];
        int i7 = 0;
        while (true) {
            if (i7 >= i2) {
                break;
            }
            long readLong = parsableByteArray.readLong();
            if (readLong == -1) {
                jArr = Arrays.copyOf(jArr, i7);
                jArr2 = Arrays.copyOf(jArr2, i7);
                break;
            }
            jArr[i7] = readLong;
            jArr2[i7] = parsableByteArray.readLong();
            parsableByteArray.skipBytes(2);
            i7++;
        }
        parsableByteArray.skipBytes((int) (position - parsableByteArray.getPosition()));
        return new O(jArr, jArr2);
    }

    public static void readStreamMarker(D d7) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        d7.readFully(parsableByteArray.getData(), 0, 4);
        if (parsableByteArray.readUnsignedInt() != 1716281667) {
            throw ParserException.createForMalformedContainer("Failed to read FLAC stream marker.", null);
        }
    }
}
