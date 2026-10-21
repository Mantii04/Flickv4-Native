package x0;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;

/* loaded from: classes.dex */
public final class i implements InterfaceC1796a {

    /* renamed from: a, reason: collision with root package name */
    public final Format f20768a;

    public i(Format format) {
        this.f20768a = format;
    }

    public static InterfaceC1796a parseFrom(int i2, ParsableByteArray parsableByteArray) {
        String str;
        if (i2 == 2) {
            parsableByteArray.skipBytes(4);
            int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
            int readLittleEndianInt2 = parsableByteArray.readLittleEndianInt();
            parsableByteArray.skipBytes(4);
            int readLittleEndianInt3 = parsableByteArray.readLittleEndianInt();
            switch (readLittleEndianInt3) {
                case 808802372:
                case 877677894:
                case 1145656883:
                case 1145656920:
                case 1482049860:
                case 1684633208:
                case 2021026148:
                    str = MimeTypes.VIDEO_MP4V;
                    break;
                case 826496577:
                case 828601953:
                case 875967048:
                    str = MimeTypes.VIDEO_H264;
                    break;
                case 842289229:
                    str = MimeTypes.VIDEO_MP42;
                    break;
                case 859066445:
                    str = MimeTypes.VIDEO_MP43;
                    break;
                case 1196444237:
                case 1735420525:
                    str = MimeTypes.VIDEO_MJPEG;
                    break;
                default:
                    str = null;
                    break;
            }
            if (str == null) {
                A.i.v(readLittleEndianInt3, "Ignoring track with unsupported compression ", "StreamFormatChunk");
                return null;
            }
            Format.Builder builder = new Format.Builder();
            builder.setWidth(readLittleEndianInt).setHeight(readLittleEndianInt2).setSampleMimeType(str);
            return new i(builder.build());
        }
        if (i2 != 1) {
            Log.w("StreamFormatChunk", "Ignoring strf box for unsupported track type: " + Util.getTrackTypeString(i2));
            return null;
        }
        int readLittleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
        String str2 = readLittleEndianUnsignedShort != 1 ? readLittleEndianUnsignedShort != 85 ? readLittleEndianUnsignedShort != 255 ? readLittleEndianUnsignedShort != 8192 ? readLittleEndianUnsignedShort != 8193 ? null : MimeTypes.AUDIO_DTS : MimeTypes.AUDIO_AC3 : MimeTypes.AUDIO_AAC : MimeTypes.AUDIO_MPEG : MimeTypes.AUDIO_RAW;
        if (str2 == null) {
            A.i.v(readLittleEndianUnsignedShort, "Ignoring track with unsupported format tag ", "StreamFormatChunk");
            return null;
        }
        int readLittleEndianUnsignedShort2 = parsableByteArray.readLittleEndianUnsignedShort();
        int readLittleEndianInt4 = parsableByteArray.readLittleEndianInt();
        parsableByteArray.skipBytes(6);
        int pcmEncoding = Util.getPcmEncoding(parsableByteArray.readLittleEndianUnsignedShort());
        int readLittleEndianUnsignedShort3 = parsableByteArray.bytesLeft() > 0 ? parsableByteArray.readLittleEndianUnsignedShort() : 0;
        Format.Builder builder2 = new Format.Builder();
        builder2.setSampleMimeType(str2).setChannelCount(readLittleEndianUnsignedShort2).setSampleRate(readLittleEndianInt4);
        if (str2.equals(MimeTypes.AUDIO_RAW) && pcmEncoding != 0) {
            builder2.setPcmEncoding(pcmEncoding);
        }
        if (str2.equals(MimeTypes.AUDIO_AAC) && readLittleEndianUnsignedShort3 > 0) {
            byte[] bArr = new byte[readLittleEndianUnsignedShort3];
            parsableByteArray.readBytes(bArr, 0, readLittleEndianUnsignedShort3);
            builder2.setInitializationData(ImmutableList.of(bArr));
        }
        return new i(builder2.build());
    }

    @Override // x0.InterfaceC1796a
    public int getType() {
        return 1718776947;
    }
}
