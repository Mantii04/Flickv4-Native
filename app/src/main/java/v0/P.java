package v0;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.Util;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class P {

    /* renamed from: a, reason: collision with root package name */
    public final int f20379a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20380b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20381c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20382d;

    /* renamed from: e, reason: collision with root package name */
    public final int f20383e;

    /* renamed from: f, reason: collision with root package name */
    public final int f20384f;

    /* renamed from: g, reason: collision with root package name */
    public final int f20385g;

    /* renamed from: h, reason: collision with root package name */
    public final int f20386h;

    /* renamed from: i, reason: collision with root package name */
    public final int f20387i;

    /* renamed from: j, reason: collision with root package name */
    public final long f20388j;

    /* renamed from: k, reason: collision with root package name */
    public final O f20389k;

    /* renamed from: l, reason: collision with root package name */
    public final Metadata f20390l;

    public P(byte[] bArr, int i2) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        parsableBitArray.setPosition(i2 * 8);
        this.f20379a = parsableBitArray.readBits(16);
        this.f20380b = parsableBitArray.readBits(16);
        this.f20381c = parsableBitArray.readBits(24);
        this.f20382d = parsableBitArray.readBits(24);
        int readBits = parsableBitArray.readBits(20);
        this.f20383e = readBits;
        this.f20384f = b(readBits);
        this.f20385g = parsableBitArray.readBits(3) + 1;
        int readBits2 = parsableBitArray.readBits(5) + 1;
        this.f20386h = readBits2;
        this.f20387i = a(readBits2);
        this.f20388j = parsableBitArray.readBitsToLong(36);
        this.f20389k = null;
        this.f20390l = null;
    }

    public static int a(int i2) {
        if (i2 == 8) {
            return 1;
        }
        if (i2 == 12) {
            return 2;
        }
        if (i2 == 16) {
            return 4;
        }
        if (i2 == 20) {
            return 5;
        }
        if (i2 != 24) {
            return i2 != 32 ? -1 : 7;
        }
        return 6;
    }

    public static int b(int i2) {
        switch (i2) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public P copyWithPictureFrames(List<H0.a> list) {
        Metadata metadataCopyWithAppendedEntriesFrom = getMetadataCopyWithAppendedEntriesFrom(new Metadata(list));
        return new P(this.f20379a, this.f20380b, this.f20381c, this.f20382d, this.f20383e, this.f20385g, this.f20386h, this.f20388j, this.f20389k, metadataCopyWithAppendedEntriesFrom);
    }

    public P copyWithSeekTable(O o6) {
        return new P(this.f20379a, this.f20380b, this.f20381c, this.f20382d, this.f20383e, this.f20385g, this.f20386h, this.f20388j, o6, this.f20390l);
    }

    public P copyWithVorbisComments(List<String> list) {
        Metadata metadataCopyWithAppendedEntriesFrom = getMetadataCopyWithAppendedEntriesFrom(x0.parseVorbisComments(list));
        return new P(this.f20379a, this.f20380b, this.f20381c, this.f20382d, this.f20383e, this.f20385g, this.f20386h, this.f20388j, this.f20389k, metadataCopyWithAppendedEntriesFrom);
    }

    public long getApproxBytesPerFrame() {
        long j7;
        long j8;
        int i2 = this.f20382d;
        if (i2 > 0) {
            j7 = (i2 + this.f20381c) / 2;
            j8 = 1;
        } else {
            int i7 = this.f20380b;
            int i8 = this.f20379a;
            j7 = ((((i8 != i7 || i8 <= 0) ? PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : i8) * this.f20385g) * this.f20386h) / 8;
            j8 = 64;
        }
        return j7 + j8;
    }

    public long getDurationUs() {
        long j7 = this.f20388j;
        return j7 == 0 ? androidx.media3.common.C.TIME_UNSET : (j7 * 1000000) / this.f20383e;
    }

    public Format getFormat(byte[] bArr, Metadata metadata) {
        bArr[4] = Byte.MIN_VALUE;
        int i2 = this.f20382d;
        if (i2 <= 0) {
            i2 = -1;
        }
        return new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_FLAC).setMaxInputSize(i2).setChannelCount(this.f20385g).setSampleRate(this.f20383e).setPcmEncoding(Util.getPcmEncoding(this.f20386h)).setInitializationData(Collections.singletonList(bArr)).setMetadata(getMetadataCopyWithAppendedEntriesFrom(metadata)).build();
    }

    public Metadata getMetadataCopyWithAppendedEntriesFrom(Metadata metadata) {
        Metadata metadata2 = this.f20390l;
        return metadata2 == null ? metadata : metadata2.copyWithAppendedEntriesFrom(metadata);
    }

    public long getSampleNumber(long j7) {
        return Util.constrainValue((j7 * this.f20383e) / 1000000, 0L, this.f20388j - 1);
    }

    public P(int i2, int i7, int i8, int i9, int i10, int i11, int i12, long j7, O o6, Metadata metadata) {
        this.f20379a = i2;
        this.f20380b = i7;
        this.f20381c = i8;
        this.f20382d = i9;
        this.f20383e = i10;
        this.f20384f = b(i10);
        this.f20385g = i11;
        this.f20386h = i12;
        this.f20387i = a(i12);
        this.f20388j = j7;
        this.f20389k = o6;
        this.f20390l = metadata;
    }
}
