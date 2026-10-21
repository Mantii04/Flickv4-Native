package Q0;

import P3.v;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import java.util.Arrays;
import v0.K;
import v0.M;
import v0.O;
import v0.P;

/* loaded from: classes.dex */
public final class d extends l {

    /* renamed from: n, reason: collision with root package name */
    public P f2760n;

    /* renamed from: o, reason: collision with root package name */
    public c f2761o;

    public static boolean verifyBitstreamType(ParsableByteArray parsableByteArray) {
        return parsableByteArray.bytesLeft() >= 5 && parsableByteArray.readUnsignedByte() == 127 && parsableByteArray.readUnsignedInt() == 1179402563;
    }

    @Override // Q0.l
    public long preparePayload(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.getData()[0] != -1) {
            return -1L;
        }
        int i2 = (parsableByteArray.getData()[2] & 255) >> 4;
        if (i2 == 6 || i2 == 7) {
            parsableByteArray.skipBytes(4);
            parsableByteArray.readUtf8EncodedLong();
        }
        int readFrameBlockSizeSamplesFromKey = K.readFrameBlockSizeSamplesFromKey(parsableByteArray, i2);
        parsableByteArray.setPosition(0);
        return readFrameBlockSizeSamplesFromKey;
    }

    @Override // Q0.l
    public boolean readHeaders(ParsableByteArray parsableByteArray, long j7, j jVar) {
        byte[] data = parsableByteArray.getData();
        P p6 = this.f2760n;
        if (p6 == null) {
            P p7 = new P(data, 17);
            this.f2760n = p7;
            jVar.f2780a = p7.getFormat(Arrays.copyOfRange(data, 9, parsableByteArray.limit()), null).buildUpon().setContainerMimeType(MimeTypes.AUDIO_OGG).build();
            return true;
        }
        byte b7 = data[0];
        if ((b7 & Byte.MAX_VALUE) == 3) {
            O readSeekTableMetadataBlock = M.readSeekTableMetadataBlock(parsableByteArray);
            P copyWithSeekTable = p6.copyWithSeekTable(readSeekTableMetadataBlock);
            this.f2760n = copyWithSeekTable;
            this.f2761o = new c(copyWithSeekTable, readSeekTableMetadataBlock);
            return true;
        }
        if (b7 != -1) {
            return true;
        }
        c cVar = this.f2761o;
        if (cVar != null) {
            cVar.setFirstFrameOffset(j7);
            jVar.f2781b = this.f2761o;
        }
        v.checkNotNull(jVar.f2780a);
        return false;
    }

    @Override // Q0.l
    public void reset(boolean z6) {
        super.reset(z6);
        if (z6) {
            this.f2760n = null;
            this.f2761o = null;
        }
    }
}
