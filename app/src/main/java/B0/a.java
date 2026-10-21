package B0;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.flv.TagPayloadReader$UnsupportedFormatException;
import java.util.Collections;
import v0.AbstractC1718b;
import v0.C1717a;
import v0.r0;

/* loaded from: classes.dex */
public final class a extends d {

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f113e = {5512, 11025, 22050, 44100};

    /* renamed from: b, reason: collision with root package name */
    public boolean f114b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f115c;

    /* renamed from: d, reason: collision with root package name */
    public int f116d;

    public a(r0 r0Var) {
        super(r0Var);
    }

    @Override // B0.d
    public boolean parseHeader(ParsableByteArray parsableByteArray) throws TagPayloadReader$UnsupportedFormatException {
        if (this.f114b) {
            parsableByteArray.skipBytes(1);
            return true;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i2 = (readUnsignedByte >> 4) & 15;
        this.f116d = i2;
        r0 r0Var = this.f136a;
        if (i2 == 2) {
            r0Var.format(new Format.Builder().setContainerMimeType(MimeTypes.VIDEO_FLV).setSampleMimeType(MimeTypes.AUDIO_MPEG).setChannelCount(1).setSampleRate(f113e[(readUnsignedByte >> 2) & 3]).build());
            this.f115c = true;
        } else if (i2 == 7 || i2 == 8) {
            r0Var.format(new Format.Builder().setContainerMimeType(MimeTypes.VIDEO_FLV).setSampleMimeType(i2 == 7 ? MimeTypes.AUDIO_ALAW : MimeTypes.AUDIO_MLAW).setChannelCount(1).setSampleRate(8000).build());
            this.f115c = true;
        } else if (i2 != 10) {
            throw new TagPayloadReader$UnsupportedFormatException("Audio format not supported: " + this.f116d);
        }
        this.f114b = true;
        return true;
    }

    @Override // B0.d
    public boolean parsePayload(ParsableByteArray parsableByteArray, long j7) throws ParserException {
        int i2 = this.f116d;
        r0 r0Var = this.f136a;
        if (i2 == 2) {
            int bytesLeft = parsableByteArray.bytesLeft();
            r0Var.sampleData(parsableByteArray, bytesLeft);
            this.f136a.sampleMetadata(j7, 1, bytesLeft, 0, null);
            return true;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if (readUnsignedByte != 0 || this.f115c) {
            if (this.f116d == 10 && readUnsignedByte != 1) {
                return false;
            }
            int bytesLeft2 = parsableByteArray.bytesLeft();
            r0Var.sampleData(parsableByteArray, bytesLeft2);
            this.f136a.sampleMetadata(j7, 1, bytesLeft2, 0, null);
            return true;
        }
        int bytesLeft3 = parsableByteArray.bytesLeft();
        byte[] bArr = new byte[bytesLeft3];
        parsableByteArray.readBytes(bArr, 0, bytesLeft3);
        C1717a parseAudioSpecificConfig = AbstractC1718b.parseAudioSpecificConfig(bArr);
        r0Var.format(new Format.Builder().setContainerMimeType(MimeTypes.VIDEO_FLV).setSampleMimeType(MimeTypes.AUDIO_AAC).setCodecs(parseAudioSpecificConfig.f20430c).setChannelCount(parseAudioSpecificConfig.f20429b).setSampleRate(parseAudioSpecificConfig.f20428a).setInitializationData(Collections.singletonList(bArr)).build());
        this.f115c = true;
        return false;
    }
}
