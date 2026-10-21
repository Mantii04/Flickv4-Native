package Q0;

import P3.v;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;
import v0.b0;
import v0.x0;

/* loaded from: classes.dex */
public final class i extends l {

    /* renamed from: o, reason: collision with root package name */
    public static final byte[] f2777o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: p, reason: collision with root package name */
    public static final byte[] f2778p = {79, 112, 117, 115, 84, 97, 103, 115};

    /* renamed from: n, reason: collision with root package name */
    public boolean f2779n;

    public static boolean a(ParsableByteArray parsableByteArray, byte[] bArr) {
        if (parsableByteArray.bytesLeft() < bArr.length) {
            return false;
        }
        int position = parsableByteArray.getPosition();
        byte[] bArr2 = new byte[bArr.length];
        parsableByteArray.readBytes(bArr2, 0, bArr.length);
        parsableByteArray.setPosition(position);
        return Arrays.equals(bArr2, bArr);
    }

    public static boolean verifyBitstreamType(ParsableByteArray parsableByteArray) {
        return a(parsableByteArray, f2777o);
    }

    @Override // Q0.l
    public long preparePayload(ParsableByteArray parsableByteArray) {
        return convertTimeToGranule(b0.getPacketDurationUs(parsableByteArray.getData()));
    }

    @Override // Q0.l
    public boolean readHeaders(ParsableByteArray parsableByteArray, long j7, j jVar) throws ParserException {
        if (a(parsableByteArray, f2777o)) {
            byte[] copyOf = Arrays.copyOf(parsableByteArray.getData(), parsableByteArray.limit());
            int channelCount = b0.getChannelCount(copyOf);
            List<byte[]> buildInitializationData = b0.buildInitializationData(copyOf);
            if (jVar.f2780a == null) {
                jVar.f2780a = new Format.Builder().setContainerMimeType(MimeTypes.AUDIO_OGG).setSampleMimeType(MimeTypes.AUDIO_OPUS).setChannelCount(channelCount).setSampleRate(48000).setInitializationData(buildInitializationData).build();
                return true;
            }
        } else {
            if (!a(parsableByteArray, f2778p)) {
                v.checkNotNull(jVar.f2780a);
                return false;
            }
            v.checkNotNull(jVar.f2780a);
            if (!this.f2779n) {
                this.f2779n = true;
                parsableByteArray.skipBytes(8);
                Metadata parseVorbisComments = x0.parseVorbisComments(ImmutableList.copyOf(x0.readVorbisCommentHeader(parsableByteArray, false, false).f20550a));
                if (parseVorbisComments != null) {
                    jVar.f2780a = jVar.f2780a.buildUpon().setMetadata(parseVorbisComments.copyWithAppendedEntriesFrom(jVar.f2780a.metadata)).build();
                    return true;
                }
            }
        }
        return true;
    }

    @Override // Q0.l
    public void reset(boolean z6) {
        super.reset(z6);
        if (z6) {
            this.f2779n = false;
        }
    }
}
